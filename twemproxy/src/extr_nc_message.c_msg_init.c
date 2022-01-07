
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;


 int LOG_DEBUG ;
 int TAILQ_INIT (int *) ;
 scalar_t__ frag_id ;
 int free_msgq ;
 int log_debug (int ,char*,int) ;
 scalar_t__ msg_id ;
 scalar_t__ nfree_msgq ;
 int rbtree_init (int *,int *) ;
 int tmo_rbs ;
 int tmo_rbt ;

void
msg_init(void)
{
    log_debug(LOG_DEBUG, "msg size %d", sizeof(struct msg));
    msg_id = 0;
    frag_id = 0;
    nfree_msgq = 0;
    TAILQ_INIT(&free_msgq);
    rbtree_init(&tmo_rbt, &tmo_rbs);
}
