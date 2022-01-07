
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct msg {int mlen; int keys; } ;
struct mbuf {scalar_t__ last; } ;
struct keypos {scalar_t__ end; scalar_t__ start; } ;
typedef int rstatus_t ;
typedef int printbuf ;


 scalar_t__ CRLF ;
 scalar_t__ CRLF_LEN ;
 int NC_ENOMEM ;
 int NC_OK ;
 struct keypos* array_push (int ) ;
 int mbuf_copy (struct mbuf*,int *,scalar_t__) ;
 struct mbuf* msg_ensure_mbuf (struct msg*,scalar_t__) ;
 scalar_t__ nc_snprintf (int *,int,char*,scalar_t__) ;

__attribute__((used)) static rstatus_t
redis_append_key(struct msg *r, uint8_t *key, uint32_t keylen)
{
    uint32_t len;
    struct mbuf *mbuf;
    uint8_t printbuf[32];
    struct keypos *kpos;


    len = (uint32_t)nc_snprintf(printbuf, sizeof(printbuf), "$%d\r\n", keylen);
    mbuf = msg_ensure_mbuf(r, len);
    if (mbuf == ((void*)0)) {
        return NC_ENOMEM;
    }
    mbuf_copy(mbuf, printbuf, len);
    r->mlen += len;


    mbuf = msg_ensure_mbuf(r, keylen);
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


    mbuf = msg_ensure_mbuf(r, CRLF_LEN);
    if (mbuf == ((void*)0)) {
        return NC_ENOMEM;
    }
    mbuf_copy(mbuf, (uint8_t *)CRLF, CRLF_LEN);
    r->mlen += (uint32_t)CRLF_LEN;

    return NC_OK;
}
