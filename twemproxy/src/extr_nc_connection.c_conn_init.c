
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {int dummy; } ;


 int LOG_DEBUG ;
 int TAILQ_INIT (int *) ;
 int free_connq ;
 int log_debug (int ,char*,int) ;
 scalar_t__ nfree_connq ;

void
conn_init(void)
{
    log_debug(LOG_DEBUG, "conn size %d", sizeof(struct conn));
    nfree_connq = 0;
    TAILQ_INIT(&free_connq);
}
