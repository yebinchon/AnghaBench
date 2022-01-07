
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rrwlock_t ;


 int B_FALSE ;
 int rrw_enter_read_impl (int *,int ,void*) ;

void
rrw_enter_read(rrwlock_t *rrl, void *tag)
{
 rrw_enter_read_impl(rrl, B_FALSE, tag);
}
