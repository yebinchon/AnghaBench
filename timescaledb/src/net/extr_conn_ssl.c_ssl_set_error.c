
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int err; } ;
struct TYPE_5__ {TYPE_1__ conn; int errcode; } ;
typedef TYPE_2__ SSLConnection ;


 int ERR_get_error () ;

__attribute__((used)) static void
ssl_set_error(SSLConnection *conn, int err)
{
 conn->errcode = ERR_get_error();
 conn->conn.err = err;
}
