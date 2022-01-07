
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; int flags; } ;
typedef TYPE_1__ connection ;
struct TYPE_6__ {int el; } ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int CONN_FLAG_CLOSE_SCHEDULED ;
 int CONN_FLAG_IN_HANDLER ;
 int aeDeleteFileEvent (int ,int,int ) ;
 int close (int) ;
 TYPE_3__ server ;
 int zfree (TYPE_1__*) ;

__attribute__((used)) static void connSocketClose(connection *conn) {
    if (conn->fd != -1) {
        aeDeleteFileEvent(server.el,conn->fd,AE_READABLE);
        aeDeleteFileEvent(server.el,conn->fd,AE_WRITABLE);
        close(conn->fd);
        conn->fd = -1;
    }




    if (conn->flags & CONN_FLAG_IN_HANDLER) {
        conn->flags |= CONN_FLAG_CLOSE_SCHEDULED;
        return;
    }

    zfree(conn);
}
