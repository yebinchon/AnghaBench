
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;


 int ASSERT (int) ;
 struct msg* TAILQ_FIRST (int *) ;
 struct msg* TAILQ_NEXT (struct msg*,int ) ;
 int free_msgq ;
 int m_tqe ;
 int msg_free (struct msg*) ;
 scalar_t__ nfree_msgq ;

void
msg_deinit(void)
{
    struct msg *msg, *nmsg;

    for (msg = TAILQ_FIRST(&free_msgq); msg != ((void*)0);
         msg = nmsg, nfree_msgq--) {
        ASSERT(nfree_msgq > 0);
        nmsg = TAILQ_NEXT(msg, m_tqe);
        msg_free(msg);
    }
    ASSERT(nfree_msgq == 0);
}
