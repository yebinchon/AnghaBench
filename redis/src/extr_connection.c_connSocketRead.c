
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; scalar_t__ last_errno; int fd; } ;
typedef TYPE_1__ connection ;


 int CONN_STATE_CLOSED ;
 int CONN_STATE_ERROR ;
 scalar_t__ EAGAIN ;
 scalar_t__ errno ;
 int read (int ,void*,size_t) ;

__attribute__((used)) static int connSocketRead(connection *conn, void *buf, size_t buf_len) {
    int ret = read(conn->fd, buf, buf_len);
    if (!ret) {
        conn->state = CONN_STATE_CLOSED;
    } else if (ret < 0 && errno != EAGAIN) {
        conn->last_errno = errno;
        conn->state = CONN_STATE_ERROR;
    }

    return ret;
}
