
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int int32_t ;
typedef int global_State ;
typedef int MSize ;


 int CALLBACK_MAX_SLOT ;
 int CALLBACK_MCODE_SIZE ;
 int RID_EAX ;
 int RID_EBP ;
 int XI_GROUP5 ;
 int XI_JMP ;
 int XI_JMPs ;
 int XI_MOVri ;
 int XI_MOVrib ;
 int XI_PUSH ;
 int XM_OFS0 ;
 int XOg_JMP ;
 int i32ptr (int *) ;
 scalar_t__ lj_vm_ffi_callback ;
 int lua_assert (int) ;

__attribute__((used)) static void callback_mcode_init(global_State *g, uint8_t *page)
{
  uint8_t *p = page;
  uint8_t *target = (uint8_t *)(void *)lj_vm_ffi_callback;
  MSize slot;



  for (slot = 0; slot < CALLBACK_MAX_SLOT; slot++) {

    *p++ = XI_MOVrib | RID_EAX; *p++ = (uint8_t)slot;
    if ((slot & 31) == 31 || slot == CALLBACK_MAX_SLOT-1) {

      *p++ = XI_PUSH + RID_EBP;
      *p++ = XI_MOVrib | (RID_EAX+4); *p++ = (uint8_t)(slot >> 8);




      *p++ = XI_MOVri | RID_EBP;
      *(int32_t *)p = i32ptr(g); p += 4;







      *p++ = XI_JMP; *(int32_t *)p = target-(p+4); p += 4;

    } else {
      *p++ = XI_JMPs; *p++ = (uint8_t)((2+2)*(31-(slot&31)) - 2);
    }
  }
  lua_assert(p - page <= CALLBACK_MCODE_SIZE);
}
