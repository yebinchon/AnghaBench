
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ Connection ;


 int close (int ) ;
 int closesocket (int ) ;

void
ts_plain_close(Connection *conn)
{



 close(conn->sock);

}
