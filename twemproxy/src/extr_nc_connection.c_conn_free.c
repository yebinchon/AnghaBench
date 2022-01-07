
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {int dummy; } ;


 int LOG_VVERB ;
 int log_debug (int ,char*,struct conn*) ;
 int nc_free (struct conn*) ;

__attribute__((used)) static void
conn_free(struct conn *conn)
{
    log_debug(LOG_VVERB, "free conn %p", conn);
    nc_free(conn);
}
