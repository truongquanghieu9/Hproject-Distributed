//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HProject.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            this.OrderDetails = new HashSet<OrderDetail>();
        }
    
        public int OrderId { get; set; }
        public Nullable<System.DateTime> OrderDate { get; set; }
        //public System.DateTime OrderDate { get; set; }
        public string CustomerName { get; set; }
        public string CustomerPhone { get; set; }
        public Nullable<int> StoreId { get; set; }
        public Nullable<int> SalePersonId { get; set; }

        public double TotalPrice
        {
            get
            {
                var total = 0.0;
                try
                {
                    foreach (var item in OrderDetails)
                    {
                        total += (double)item.Quantity * (double)item.Price;
                    }
                    return total;
                }
                catch
                {
                    return total;
                }
            }
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        public virtual SalePerson SalePerson { get; set; }
        public virtual Store Store { get; set; }
    }
}
