
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vm_guest_paging {scalar_t__ cpl; } ;
struct vm_task_switch {scalar_t__ reason; struct vm_guest_paging paging; int ext; } ;
struct user_segment_descriptor {int dummy; } ;


 int IDT_GP ;
 int IDT_TS ;
 scalar_t__ IDXSEL (int ) ;
 int ISLDT (int ) ;
 scalar_t__ TSR_IRET ;
 int assert (int) ;
 scalar_t__ desc_table_limit_check (int,int ) ;
 int desc_table_read (int,struct vm_guest_paging*,int ,struct user_segment_descriptor*,int*) ;
 int sel_exception (int,int ,int ,int ) ;

__attribute__((used)) static int
read_tss_descriptor(int vcpu, struct vm_task_switch *ts, uint16_t sel,
 struct user_segment_descriptor *desc, int *faultptr)
{
 struct vm_guest_paging sup_paging;
 int error;

 assert(!ISLDT(sel));
 assert(IDXSEL(sel) != 0);


 if (desc_table_limit_check(vcpu, sel)) {
  if (ts->reason == TSR_IRET)
   sel_exception(vcpu, IDT_TS, sel, ts->ext);
  else
   sel_exception(vcpu, IDT_GP, sel, ts->ext);
  return (1);
 }

 sup_paging = ts->paging;
 sup_paging.cpl = 0;
 error = desc_table_read(vcpu, &sup_paging, sel, desc, faultptr);
 return (error);
}
