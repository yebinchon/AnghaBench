
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 scalar_t__ rdp_loop (int *,int *,int *) ;

void
rdp_main_loop(RDPCLIENT * This, BOOL * deactivated, uint32 * ext_disc_reason)
{
 while (rdp_loop(This, deactivated, ext_disc_reason))
  ;
}
