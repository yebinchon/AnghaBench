
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int VMCS_GUEST_CR0 ;
 int VMCS_GUEST_CR3 ;
 int VMCS_GUEST_CR4 ;
 int VMCS_GUEST_CS_SELECTOR ;
 int VMCS_GUEST_DR7 ;
 int VMCS_GUEST_DS_SELECTOR ;
 int VMCS_GUEST_ES_SELECTOR ;
 int VMCS_GUEST_FS_SELECTOR ;
 int VMCS_GUEST_GS_SELECTOR ;
 int VMCS_GUEST_IA32_EFER ;
 int VMCS_GUEST_LDTR_SELECTOR ;
 int VMCS_GUEST_PDPTE0 ;
 int VMCS_GUEST_PDPTE1 ;
 int VMCS_GUEST_PDPTE2 ;
 int VMCS_GUEST_PDPTE3 ;
 int VMCS_GUEST_RFLAGS ;
 int VMCS_GUEST_RIP ;
 int VMCS_GUEST_RSP ;
 int VMCS_GUEST_SS_SELECTOR ;
 int VMCS_GUEST_TR_SELECTOR ;
__attribute__((used)) static uint32_t
vmcs_field_encoding(int ident)
{
 switch (ident) {
 case 147:
  return (VMCS_GUEST_CR0);
 case 146:
  return (VMCS_GUEST_CR3);
 case 145:
  return (VMCS_GUEST_CR4);
 case 143:
  return (VMCS_GUEST_DR7);
 case 130:
  return (VMCS_GUEST_RSP);
 case 131:
  return (VMCS_GUEST_RIP);
 case 132:
  return (VMCS_GUEST_RFLAGS);
 case 140:
  return (VMCS_GUEST_ES_SELECTOR);
 case 144:
  return (VMCS_GUEST_CS_SELECTOR);
 case 129:
  return (VMCS_GUEST_SS_SELECTOR);
 case 142:
  return (VMCS_GUEST_DS_SELECTOR);
 case 139:
  return (VMCS_GUEST_FS_SELECTOR);
 case 138:
  return (VMCS_GUEST_GS_SELECTOR);
 case 128:
  return (VMCS_GUEST_TR_SELECTOR);
 case 137:
  return (VMCS_GUEST_LDTR_SELECTOR);
 case 141:
  return (VMCS_GUEST_IA32_EFER);
 case 136:
  return (VMCS_GUEST_PDPTE0);
 case 135:
  return (VMCS_GUEST_PDPTE1);
 case 134:
  return (VMCS_GUEST_PDPTE2);
 case 133:
  return (VMCS_GUEST_PDPTE3);
 default:
  return ((uint32_t) -1);
 }

}
