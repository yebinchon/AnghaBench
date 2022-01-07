
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct TYPE_7__ {TYPE_2__ AddressIn; } ;
typedef TYPE_3__ sockaddr_gen ;


 int trace (char*,char*,int ) ;

void traceaddr(char* txt, sockaddr_gen a)
{
    trace("  %s.AddressIn.sin_family %x\n", txt, a.AddressIn.sin_family);
    trace("  %s.AddressIn.sin_port %x\n", txt, a.AddressIn.sin_port);
    trace("  %s.AddressIn.sin_addr.s_addr %lx\n", txt, a.AddressIn.sin_addr.s_addr);
}
