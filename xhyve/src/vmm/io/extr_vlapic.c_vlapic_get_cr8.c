
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct vlapic {int dummy; } ;


 int vlapic_get_tpr (struct vlapic*) ;

uint64_t
vlapic_get_cr8(struct vlapic *vlapic)
{
 uint8_t tpr;

 tpr = vlapic_get_tpr(vlapic);
 return (tpr >> 4);
}
