
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APIC_LVT_CMCI ;
 int APIC_LVT_ERROR ;
 int APIC_LVT_LINT0 ;
 int APIC_LVT_LINT1 ;
 int APIC_LVT_PMC ;
 int APIC_LVT_THERMAL ;
 int APIC_LVT_TIMER ;







 int KASSERT (int,char*) ;
 int VLAPIC_MAXLVT_INDEX ;

__attribute__((used)) static __inline int
lvt_off_to_idx(uint32_t offset)
{
 int index;

 switch (offset) {
 case 134:
  index = APIC_LVT_CMCI;
  break;
 case 128:
  index = APIC_LVT_TIMER;
  break;
 case 129:
  index = APIC_LVT_THERMAL;
  break;
 case 130:
  index = APIC_LVT_PMC;
  break;
 case 132:
  index = APIC_LVT_LINT0;
  break;
 case 131:
  index = APIC_LVT_LINT1;
  break;
 case 133:
  index = APIC_LVT_ERROR;
  break;
 default:
  index = -1;
  break;
 }
 KASSERT(index >= 0 && index <= VLAPIC_MAXLVT_INDEX, ("lvt_off_to_idx: "
     "invalid lvt index %d for offset %#x", index, offset));

 return (index);
}
