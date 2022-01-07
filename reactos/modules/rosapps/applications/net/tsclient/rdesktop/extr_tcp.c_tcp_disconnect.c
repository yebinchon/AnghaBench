
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sock; } ;
struct TYPE_5__ {TYPE_1__ tcp; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int True ;
 int closesocket (int ) ;

BOOL
tcp_disconnect(RDPCLIENT * This)
{
 closesocket(This->tcp.sock);
 return True;
}
