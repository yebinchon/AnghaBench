
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int port; int bytes; int string; int in; int eax; } ;
struct TYPE_5__ {TYPE_1__ inout; } ;
struct vm_exit {TYPE_2__ u; } ;
struct TYPE_6__ {int rip; } ;


 int GUEST_NIO_PORT ;
 int VMEXIT_ABORT ;
 int VMEXIT_CONTINUE ;
 int emulate_inout (int,struct vm_exit*,int ) ;
 int fprintf (int ,char*,char*,char,int,int ) ;
 int stderr ;
 int strictio ;
 TYPE_3__* vmexit ;
 int vmexit_handle_notify (struct vm_exit*,int*,int ) ;

__attribute__((used)) static int
vmexit_inout(struct vm_exit *vme, int *pvcpu)
{
 int error;
 int bytes, port, in, out, string;
 int vcpu;

 vcpu = *pvcpu;

 port = vme->u.inout.port;
 bytes = vme->u.inout.bytes;
 string = vme->u.inout.string;
 in = vme->u.inout.in;
 out = !in;


 if (out && port == GUEST_NIO_PORT) {
  error = vmexit_handle_notify(vme, pvcpu, vme->u.inout.eax);
  return (error);
 }

 error = emulate_inout(vcpu, vme, strictio);
 if (error) {
  fprintf(stderr, "Unhandled %s%c 0x%04x at 0x%llx\n",
   in ? "in" : "out",
   bytes == 1 ? 'b' : (bytes == 2 ? 'w' : 'l'),
   port, vmexit->rip);
  return (VMEXIT_ABORT);
 } else {
  return (VMEXIT_CONTINUE);
 }
}
