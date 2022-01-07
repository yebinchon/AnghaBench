
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int guest_vmexit_on_hlt ;

int
fbsdrun_vmexit_on_hlt(void)
{
 return (guest_vmexit_on_hlt);
}
