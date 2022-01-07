
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vm_guest_paging {int dummy; } ;
struct user_segment_descriptor {int dummy; } ;


 int desc_table_rw (int,struct vm_guest_paging*,int ,struct user_segment_descriptor*,int,int*) ;

__attribute__((used)) static int
desc_table_read(int vcpu, struct vm_guest_paging *paging, uint16_t sel,
 struct user_segment_descriptor *desc, int *faultptr)
{
 return (desc_table_rw(vcpu, paging, sel, desc, 1, faultptr));
}
