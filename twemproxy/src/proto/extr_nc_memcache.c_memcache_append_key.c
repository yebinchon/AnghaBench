
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct msg {int mlen; int keys; } ;
struct mbuf {int last; } ;
struct keypos {int start; int end; } ;
typedef int rstatus_t ;


 int NC_ENOMEM ;
 int NC_OK ;
 struct keypos* array_push (int ) ;
 int mbuf_copy (struct mbuf*,int *,int) ;
 struct mbuf* msg_ensure_mbuf (struct msg*,int) ;

__attribute__((used)) static rstatus_t
memcache_append_key(struct msg *r, uint8_t *key, uint32_t keylen)
{
    struct mbuf *mbuf;
    struct keypos *kpos;

    mbuf = msg_ensure_mbuf(r, keylen + 2);
    if (mbuf == ((void*)0)) {
        return NC_ENOMEM;
    }

    kpos = array_push(r->keys);
    if (kpos == ((void*)0)) {
        return NC_ENOMEM;
    }

    kpos->start = mbuf->last;
    kpos->end = mbuf->last + keylen;
    mbuf_copy(mbuf, key, keylen);
    r->mlen += keylen;

    mbuf_copy(mbuf, (uint8_t *)" ", 1);
    r->mlen += 1;
    return NC_OK;
}
