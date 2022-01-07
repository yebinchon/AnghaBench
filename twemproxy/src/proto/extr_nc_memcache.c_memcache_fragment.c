
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msg_tqh {int dummy; } ;
struct msg {int dummy; } ;
typedef int rstatus_t ;


 int NC_OK ;
 int memcache_fragment_retrieval (struct msg*,int ,struct msg_tqh*,int) ;
 scalar_t__ memcache_retrieval (struct msg*) ;

rstatus_t
memcache_fragment(struct msg *r, uint32_t ncontinuum, struct msg_tqh *frag_msgq)
{
    if (memcache_retrieval(r)) {
        return memcache_fragment_retrieval(r, ncontinuum, frag_msgq, 1);
    }
    return NC_OK;
}
