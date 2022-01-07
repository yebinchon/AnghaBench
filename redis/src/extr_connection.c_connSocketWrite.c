
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; scalar_t__ last_errno; int fd; } ;
typedef TYPE_1__ connection ;


 int CONN_STATE_ERROR ;
 scalar_t__ EAGAIN ;
 scalar_t__ errno ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static int connSocketWrite(connection *conn, const void *data, size_t data_len) {
    int ret = write(conn->fd, data, data_len);
    if (ret < 0 && errno != EAGAIN) {
        conn->last_errno = errno;
        conn->state = CONN_STATE_ERROR;
    }

    return ret;
}
