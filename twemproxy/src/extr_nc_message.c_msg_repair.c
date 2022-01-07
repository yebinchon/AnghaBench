
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int pos; int mhdr; } ;
struct mbuf {int pos; } ;
struct context {int dummy; } ;
struct conn {int dummy; } ;
typedef int rstatus_t ;


 int NC_ENOMEM ;
 int NC_OK ;
 int mbuf_insert (int *,struct mbuf*) ;
 struct mbuf* mbuf_split (int *,int ,int *,int *) ;

__attribute__((used)) static rstatus_t
msg_repair(struct context *ctx, struct conn *conn, struct msg *msg)
{
    struct mbuf *nbuf;

    nbuf = mbuf_split(&msg->mhdr, msg->pos, ((void*)0), ((void*)0));
    if (nbuf == ((void*)0)) {
        return NC_ENOMEM;
    }
    mbuf_insert(&msg->mhdr, nbuf);
    msg->pos = nbuf->pos;

    return NC_OK;
}
