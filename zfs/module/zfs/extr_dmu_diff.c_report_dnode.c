
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ ddr_type; scalar_t__ ddr_last; scalar_t__ ddr_first; } ;
struct diffarg {int da_err; TYPE_1__ da_ddr; } ;
struct TYPE_5__ {scalar_t__ dn_type; } ;
typedef TYPE_2__ dnode_phys_t ;


 int ASSERT (int ) ;
 scalar_t__ DDR_INUSE ;
 scalar_t__ DMU_OT_NONE ;
 int report_free_dnode_range (struct diffarg*,scalar_t__,scalar_t__) ;
 scalar_t__ write_record (struct diffarg*) ;

__attribute__((used)) static int
report_dnode(struct diffarg *da, uint64_t object, dnode_phys_t *dnp)
{
 ASSERT(dnp != ((void*)0));
 if (dnp->dn_type == DMU_OT_NONE)
  return (report_free_dnode_range(da, object, object));

 if (da->da_ddr.ddr_type != DDR_INUSE ||
     object != da->da_ddr.ddr_last + 1) {
  if (write_record(da) != 0)
   return (da->da_err);
  da->da_ddr.ddr_type = DDR_INUSE;
  da->da_ddr.ddr_first = da->da_ddr.ddr_last = object;
  return (0);
 }
 da->da_ddr.ddr_last = object;
 return (0);
}
