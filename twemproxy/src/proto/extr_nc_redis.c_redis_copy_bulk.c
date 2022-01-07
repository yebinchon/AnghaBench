
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
struct msg {int mlen; int mhdr; } ;
struct mbuf {char* pos; char* last; } ;
typedef scalar_t__ rstatus_t ;


 int ASSERT (int) ;
 int CRLF_LEN ;
 int LOG_VVERB ;
 scalar_t__ NC_ERROR ;
 scalar_t__ NC_OK ;
 struct mbuf* STAILQ_FIRST (int *) ;
 struct mbuf* STAILQ_NEXT (struct mbuf*,int ) ;
 scalar_t__ isdigit (char) ;
 int log_debug (int ,char*,int) ;
 scalar_t__ mbuf_empty (struct mbuf*) ;
 int mbuf_insert (int *,struct mbuf*) ;
 int mbuf_length (struct mbuf*) ;
 int mbuf_put (struct mbuf*) ;
 int mbuf_remove (int *,struct mbuf*) ;
 scalar_t__ msg_append (struct msg*,char*,int) ;
 int next ;

__attribute__((used)) static rstatus_t
redis_copy_bulk(struct msg *dst, struct msg *src)
{
    struct mbuf *mbuf, *nbuf;
    uint8_t *p;
    uint32_t len = 0;
    uint32_t bytes = 0;
    rstatus_t status;

    for (mbuf = STAILQ_FIRST(&src->mhdr);
         mbuf && mbuf_empty(mbuf);
         mbuf = STAILQ_FIRST(&src->mhdr)) {

        mbuf_remove(&src->mhdr, mbuf);
        mbuf_put(mbuf);
    }

    mbuf = STAILQ_FIRST(&src->mhdr);
    if (mbuf == ((void*)0)) {
        return NC_ERROR;
    }

    p = mbuf->pos;
    ASSERT(*p == '$');
    p++;

    if (p[0] == '-' && p[1] == '1') {
        len = 1 + 2 + CRLF_LEN;
        p = mbuf->pos + len;
    } else {
        len = 0;
        for (; p < mbuf->last && isdigit(*p); p++) {
            len = len * 10 + (uint32_t)(*p - '0');
        }
        len += CRLF_LEN * 2;
        len += (p - mbuf->pos);
    }
    bytes = len;


    for (; mbuf;) {
        if (mbuf_length(mbuf) <= len) {
            nbuf = STAILQ_NEXT(mbuf, next);
            mbuf_remove(&src->mhdr, mbuf);
            if (dst != ((void*)0)) {
                mbuf_insert(&dst->mhdr, mbuf);
            } else {
                mbuf_put(mbuf);
            }
            len -= mbuf_length(mbuf);
            mbuf = nbuf;
        } else {
            if (dst != ((void*)0)) {
                status = msg_append(dst, mbuf->pos, len);
                if (status != NC_OK) {
                    return status;
                }
            }
            mbuf->pos += len;
            break;
        }
    }

    if (dst != ((void*)0)) {
        dst->mlen += bytes;
    }
    src->mlen -= bytes;
    log_debug(LOG_VVERB, "redis_copy_bulk copy bytes: %d", bytes);
    return NC_OK;
}
