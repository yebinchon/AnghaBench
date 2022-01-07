
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vrtc {int dummy; } ;
struct vm {struct vrtc* vrtc; } ;



struct vrtc *
vm_rtc(struct vm *vm)
{

 return (vm->vrtc);
}
