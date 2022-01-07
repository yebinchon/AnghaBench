
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msg_tqh {int dummy; } ;
struct msg {int type; int keys; } ;
typedef int rstatus_t ;





 int NC_OK ;
 int array_n (int ) ;
 int redis_fragment_argx (struct msg*,int ,struct msg_tqh*,int) ;

rstatus_t
redis_fragment(struct msg *r, uint32_t ncontinuum, struct msg_tqh *frag_msgq)
{
    if (1 == array_n(r->keys)){
        return NC_OK;
    }

    switch (r->type) {
    case 129:
    case 130:
        return redis_fragment_argx(r, ncontinuum, frag_msgq, 1);

    case 128:
        return redis_fragment_argx(r, ncontinuum, frag_msgq, 2);

    default:
        return NC_OK;
    }
}
