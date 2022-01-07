
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vm_guest_paging {int cpl; } ;
struct vm_task_switch {int ext; struct vm_guest_paging paging; } ;
struct user_segment_descriptor {int sd_type; int sd_dpl; int sd_p; } ;
struct seg_desc {int access; scalar_t__ limit; scalar_t__ base; } ;


 scalar_t__ GETREG (int,int const) ;
 int IDT_NP ;
 int IDT_SS ;
 int IDT_TS ;
 scalar_t__ IDXSEL (int) ;
 scalar_t__ ISLDT (int) ;
 int SEL_RPL_MASK ;







 int assert (int ) ;
 scalar_t__ code_desc (int) ;
 int data_desc (int) ;
 scalar_t__ desc_table_limit_check (int,int) ;
 int desc_table_read (int,struct vm_guest_paging*,int,struct user_segment_descriptor*,int*) ;
 int ldt_desc (int) ;
 int sel_exception (int,int,int,int ) ;
 int stack_desc (int) ;
 struct seg_desc usd_to_seg_desc (struct user_segment_descriptor*) ;

__attribute__((used)) static int
validate_seg_desc(int vcpu, struct vm_task_switch *ts, int segment,
 struct seg_desc *seg_desc, int *faultptr)
{
 struct vm_guest_paging sup_paging;
 struct user_segment_descriptor usd;
 int error, idtvec;
 int cpl, dpl, rpl;
 uint16_t sel, cs;
 bool ldtseg, codeseg, stackseg, dataseg, conforming;

 ldtseg = codeseg = stackseg = dataseg = 0;
 switch (segment) {
 case 129:
  ldtseg = 1;
  break;
 case 134:
  codeseg = 1;
  break;
 case 128:
  stackseg = 1;
  break;
 case 133:
 case 132:
 case 131:
 case 130:
  dataseg = 1;
  break;
 default:
  assert(0);
 }


 sel = (uint16_t) GETREG(vcpu, segment);


 if (ldtseg && ISLDT(sel)) {
  sel_exception(vcpu, IDT_TS, sel, ts->ext);
  return (1);
 }


 if (desc_table_limit_check(vcpu, sel)) {
  sel_exception(vcpu, IDT_TS, sel, ts->ext);
  return (1);
 }


 if (IDXSEL(sel) == 0) {

  if (codeseg || stackseg) {
   sel_exception(vcpu, IDT_TS, sel, ts->ext);
   return (1);
  }
  seg_desc->base = 0;
  seg_desc->limit = 0;
  seg_desc->access = 0x10000;
  return (0);
 }


 sup_paging = ts->paging;
 sup_paging.cpl = 0;
 error = desc_table_read(vcpu, &sup_paging, sel, &usd, faultptr);
 if (error || *faultptr)
  return (error);


 if ((ldtseg && !ldt_desc(usd.sd_type)) ||
     (codeseg && !code_desc(usd.sd_type)) ||
     (dataseg && !data_desc(usd.sd_type)) ||
     (stackseg && !stack_desc(usd.sd_type))) {
  sel_exception(vcpu, IDT_TS, sel, ts->ext);
  return (1);
 }


 if (!usd.sd_p) {
  if (ldtseg)
   idtvec = IDT_TS;
  else if (stackseg)
   idtvec = IDT_SS;
  else
   idtvec = IDT_NP;
  sel_exception(vcpu, idtvec, sel, ts->ext);
  return (1);
 }

 cs = (uint16_t) GETREG(vcpu, 134);
 cpl = cs & SEL_RPL_MASK;
 rpl = sel & SEL_RPL_MASK;
 dpl = usd.sd_dpl;

 if (stackseg && (rpl != cpl || dpl != cpl)) {
  sel_exception(vcpu, IDT_TS, sel, ts->ext);
  return (1);
 }

 if (codeseg) {
  conforming = (usd.sd_type & 0x4) ? 1 : 0;
  if ((conforming && (cpl < dpl)) ||
      (!conforming && (cpl != dpl))) {
   sel_exception(vcpu, IDT_TS, sel, ts->ext);
   return (1);
  }
 }

 if (dataseg) {




  if (code_desc(usd.sd_type) && (usd.sd_type & 0x4) != 0)
   conforming = 1;
  else
   conforming = 0;

  if (!conforming && (rpl > dpl || cpl > dpl)) {
   sel_exception(vcpu, IDT_TS, sel, ts->ext);
   return (1);
  }
 }
 *seg_desc = usd_to_seg_desc(&usd);
 return (0);
}
