
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;
struct conn {int err; int sd; scalar_t__ proxy; scalar_t__ client; } ;
typedef scalar_t__ rstatus_t ;


 int core_close (struct context*,struct conn*) ;
 int errno ;
 int log_warn (char*,char,int ,int ) ;
 scalar_t__ nc_get_soerror (int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
core_error(struct context *ctx, struct conn *conn)
{
    rstatus_t status;
    char type = conn->client ? 'c' : (conn->proxy ? 'p' : 's');

    status = nc_get_soerror(conn->sd);
    if (status < 0) {
        log_warn("get soerr on %c %d failed, ignored: %s", type, conn->sd,
                  strerror(errno));
    }
    conn->err = errno;

    core_close(ctx, conn);
}
