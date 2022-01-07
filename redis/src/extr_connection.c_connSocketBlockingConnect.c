
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; void* state; int last_errno; } ;
typedef TYPE_1__ connection ;


 int AE_WRITABLE ;
 void* CONN_STATE_CONNECTED ;
 void* CONN_STATE_ERROR ;
 int C_ERR ;
 int C_OK ;
 int ETIMEDOUT ;
 int aeWait (int,int,long long) ;
 int anetTcpNonBlockConnect (int *,char const*,int) ;
 int errno ;

__attribute__((used)) static int connSocketBlockingConnect(connection *conn, const char *addr, int port, long long timeout) {
    int fd = anetTcpNonBlockConnect(((void*)0),addr,port);
    if (fd == -1) {
        conn->state = CONN_STATE_ERROR;
        conn->last_errno = errno;
        return C_ERR;
    }

    if ((aeWait(fd, AE_WRITABLE, timeout) & AE_WRITABLE) == 0) {
        conn->state = CONN_STATE_ERROR;
        conn->last_errno = ETIMEDOUT;
    }

    conn->fd = fd;
    conn->state = CONN_STATE_CONNECTED;
    return C_OK;
}
