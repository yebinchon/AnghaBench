
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmx {TYPE_1__* cap; } ;
struct TYPE_2__ {int set; } ;


 int ENOENT ;



 int cap_halt_exit ;
 int cap_monitor_trap ;
 int cap_pause_exit ;

__attribute__((used)) static int
vmx_getcap(void *arg, int vcpu, int type, int *retval)
{
 struct vmx *vmx = arg;
 int vcap;
 int ret;

 ret = ENOENT;

 vcap = vmx->cap[vcpu].set;

 switch (type) {
 case 130:
  if (cap_halt_exit)
   ret = 0;
  break;
 case 128:
  if (cap_pause_exit)
   ret = 0;
  break;
 case 129:
  if (cap_monitor_trap)
   ret = 0;
  break;
 default:
  break;
 }

 if (ret == 0)
  *retval = (vcap & (1 << type)) ? 1 : 0;

 return (ret);
}
