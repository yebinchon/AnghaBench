
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu {int dummy; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int vcpu_set_state_locked (struct vcpu*,int,int) ;
 int xhyve_abort (char*,int,int) ;

__attribute__((used)) static void
vcpu_require_state_locked(struct vcpu *vcpu, enum vcpu_state newstate)
{
 int error;

 if ((error = vcpu_set_state_locked(vcpu, newstate, 0)) != 0)
  xhyve_abort("Error %d setting state to %d", error, newstate);
}
