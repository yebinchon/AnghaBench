
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int VCPU_FROZEN ;
 int VCPU_IDLE ;
 scalar_t__ vcpu_set_state (int ,int,int,int) ;
 int vm ;
 int xhyve_abort (char*) ;

__attribute__((used)) static void
vcpu_freeze(int vcpu, bool freeze)
{
 enum vcpu_state state;

 state = (freeze) ? VCPU_FROZEN : VCPU_IDLE;

 if (vcpu_set_state(vm, vcpu, state, freeze)) {
  xhyve_abort("vcpu_set_state failed\n");
 }
}
