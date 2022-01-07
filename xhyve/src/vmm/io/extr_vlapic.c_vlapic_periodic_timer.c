
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int dummy; } ;


 int APIC_LVTT_TM_PERIODIC ;
 int APIC_OFFSET_TIMER_LVT ;
 int vlapic_get_lvt (struct vlapic*,int ) ;
 int vlapic_get_lvt_field (int ,int ) ;

__attribute__((used)) static __inline int
vlapic_periodic_timer(struct vlapic *vlapic)
{
 uint32_t lvt;

 lvt = vlapic_get_lvt(vlapic, APIC_OFFSET_TIMER_LVT);

 return (vlapic_get_lvt_field(lvt, APIC_LVTT_TM_PERIODIC));
}
