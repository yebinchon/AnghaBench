
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inout_port {char* name; int port; int size; int flags; int handler; } ;
typedef int iop ;


 int IOPORT_F_DEFAULT ;
 int IOPORT_F_INOUT ;
 int VERIFY_IOPORT (int,int) ;
 int bzero (struct inout_port*,int) ;
 int default_inout ;
 int register_inout (struct inout_port*) ;

__attribute__((used)) static void
register_default_iohandler(int start, int size)
{
 struct inout_port iop;

 VERIFY_IOPORT(start, size);

 bzero(&iop, sizeof(iop));
 iop.name = "default";
 iop.port = start;
 iop.size = size;
 iop.flags = (int) (IOPORT_F_INOUT | IOPORT_F_DEFAULT);
 iop.handler = default_inout;

 register_inout(&iop);
}
