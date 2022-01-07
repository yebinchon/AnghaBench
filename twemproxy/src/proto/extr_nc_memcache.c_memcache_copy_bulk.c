
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
struct msg {int mlen; int mhdr; } ;
struct mbuf {char* pos; char* last; } ;
typedef int rstatus_t ;


 int ASSERT (int) ;
 int CRLF_LEN ;
 int LOG_VVERB ;
 int NC_ENOMEM ;
 int NC_OK ;
 struct mbuf* STAILQ_FIRST (int *) ;
 struct mbuf* STAILQ_NEXT (struct mbuf*,int ) ;
 scalar_t__ isdigit (char) ;
 int log_debug (int ,char*,int) ;
 int mbuf_copy (struct mbuf*,char*,int) ;
 scalar_t__ mbuf_empty (struct mbuf*) ;
 struct mbuf* mbuf_get () ;
 int mbuf_insert (int *,struct mbuf*) ;
 int mbuf_length (struct mbuf*) ;
 int mbuf_put (struct mbuf*) ;
 int mbuf_remove (int *,struct mbuf*) ;
 int next ;

__attribute__((used)) static rstatus_t
memcache_copy_bulk(struct msg *dst, struct msg *src)
{
    struct mbuf *mbuf, *nbuf;
    uint8_t *p;
    uint32_t len = 0;
    uint32_t bytes = 0;
    uint32_t i = 0;

    for (mbuf = STAILQ_FIRST(&src->mhdr);
         mbuf && mbuf_empty(mbuf);
         mbuf = STAILQ_FIRST(&src->mhdr)) {

        mbuf_remove(&src->mhdr, mbuf);
        mbuf_put(mbuf);
    }

    mbuf = STAILQ_FIRST(&src->mhdr);
    if (mbuf == ((void*)0)) {
        return NC_OK;
    }
    p = mbuf->pos;





    ASSERT(*p == 'V');
    for (i = 0; i < 3; i++) {
        for (; *p != ' ';) {
            p++;
        }
        p++;
    }

    len = 0;
    for (; p < mbuf->last && isdigit(*p); p++) {
        len = len * 10 + (uint32_t)(*p - '0');
    }

    for (; p < mbuf->last && ('\r' != *p); p++) {
        ;
    }

    len += CRLF_LEN * 2;
    len += (p - mbuf->pos);

    bytes = len;


    for (; mbuf;) {
        if (mbuf_length(mbuf) <= len) {
            nbuf = STAILQ_NEXT(mbuf, next);
            mbuf_remove(&src->mhdr, mbuf);
            mbuf_insert(&dst->mhdr, mbuf);
            len -= mbuf_length(mbuf);
            mbuf = nbuf;
        } else {
            nbuf = mbuf_get();
            if (nbuf == ((void*)0)) {
                return NC_ENOMEM;
            }
            mbuf_copy(nbuf, mbuf->pos, len);
            mbuf_insert(&dst->mhdr, nbuf);
            mbuf->pos += len;
            break;
        }
    }

    dst->mlen += bytes;
    src->mlen -= bytes;
    log_debug(LOG_VVERB, "memcache_copy_bulk copy bytes: %d", bytes);
    return NC_OK;
}
