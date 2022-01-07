
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;
struct conn {scalar_t__ (* recv ) (struct context*,struct conn*) ;int sd; scalar_t__ proxy; scalar_t__ client; } ;
typedef scalar_t__ rstatus_t ;


 int LOG_INFO ;
 scalar_t__ NC_OK ;
 int errno ;
 int log_debug (int ,char*,char,int ,int ) ;
 int strerror (int ) ;
 scalar_t__ stub1 (struct context*,struct conn*) ;

__attribute__((used)) static rstatus_t
core_recv(struct context *ctx, struct conn *conn)
{
    rstatus_t status;

    status = conn->recv(ctx, conn);
    if (status != NC_OK) {
        log_debug(LOG_INFO, "recv on %c %d failed: %s",
                  conn->client ? 'c' : (conn->proxy ? 'p' : 's'), conn->sd,
                  strerror(errno));
    }

    return status;
}
