
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int dummy; } ;


 int VLAPIC_CTR0 (struct vlapic*,char*) ;
 int vlapic_set_tmr (struct vlapic*,int,int) ;

void
vlapic_reset_tmr(struct vlapic *vlapic)
{
 int vector;

 VLAPIC_CTR0(vlapic, "vlapic resetting all vectors to edge-triggered");

 for (vector = 0; vector <= 255; vector++)
  vlapic_set_tmr(vlapic, vector, 0);
}
