
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {scalar_t__ redis; scalar_t__ swallow; scalar_t__ fdone; scalar_t__ done; scalar_t__ noforward; scalar_t__ noreply; scalar_t__ quit; scalar_t__ request; scalar_t__ ferror; scalar_t__ error; scalar_t__ err; scalar_t__ integer; scalar_t__ rlen; scalar_t__ rnarg; scalar_t__ narg; int * narg_end; int * narg_start; scalar_t__ frag_id; scalar_t__ nfrag_done; scalar_t__ nfrag; int * frag_seq; int * frag_owner; int * end; scalar_t__ vlen; int * keys; int type; int * post_coalesce; int * pre_coalesce; int * reply; int * fragment; int result; int * add_auth; int * parser; int * token; int * pos; scalar_t__ state; scalar_t__ start_ts; scalar_t__ mlen; int mhdr; int tmo_rbe; int * owner; int * peer; scalar_t__ id; } ;
struct keypos {int dummy; } ;


 int ASSERT (int) ;
 int MSG_PARSE_OK ;
 int MSG_UNKNOWN ;
 int STAILQ_INIT (int *) ;
 int TAILQ_EMPTY (int *) ;
 struct msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct msg*,int ) ;
 int * array_create (int,int) ;
 int free_msgq ;
 int m_tqe ;
 scalar_t__ msg_id ;
 struct msg* nc_alloc (int) ;
 int nc_free (struct msg*) ;
 scalar_t__ nfree_msgq ;
 int rbtree_node_init (int *) ;

__attribute__((used)) static struct msg *
_msg_get(void)
{
    struct msg *msg;

    if (!TAILQ_EMPTY(&free_msgq)) {
        ASSERT(nfree_msgq > 0);

        msg = TAILQ_FIRST(&free_msgq);
        nfree_msgq--;
        TAILQ_REMOVE(&free_msgq, msg, m_tqe);
        goto done;
    }

    msg = nc_alloc(sizeof(*msg));
    if (msg == ((void*)0)) {
        return ((void*)0);
    }

done:

    msg->id = ++msg_id;
    msg->peer = ((void*)0);
    msg->owner = ((void*)0);

    rbtree_node_init(&msg->tmo_rbe);

    STAILQ_INIT(&msg->mhdr);
    msg->mlen = 0;
    msg->start_ts = 0;

    msg->state = 0;
    msg->pos = ((void*)0);
    msg->token = ((void*)0);

    msg->parser = ((void*)0);
    msg->add_auth = ((void*)0);
    msg->result = MSG_PARSE_OK;

    msg->fragment = ((void*)0);
    msg->reply = ((void*)0);
    msg->pre_coalesce = ((void*)0);
    msg->post_coalesce = ((void*)0);

    msg->type = MSG_UNKNOWN;

    msg->keys = array_create(1, sizeof(struct keypos));
    if (msg->keys == ((void*)0)) {
        nc_free(msg);
        return ((void*)0);
    }

    msg->vlen = 0;
    msg->end = ((void*)0);

    msg->frag_owner = ((void*)0);
    msg->frag_seq = ((void*)0);
    msg->nfrag = 0;
    msg->nfrag_done = 0;
    msg->frag_id = 0;

    msg->narg_start = ((void*)0);
    msg->narg_end = ((void*)0);
    msg->narg = 0;
    msg->rnarg = 0;
    msg->rlen = 0;
    msg->integer = 0;

    msg->err = 0;
    msg->error = 0;
    msg->ferror = 0;
    msg->request = 0;
    msg->quit = 0;
    msg->noreply = 0;
    msg->noforward = 0;
    msg->done = 0;
    msg->fdone = 0;
    msg->swallow = 0;
    msg->redis = 0;

    return msg;
}
