#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint32_t ;
struct msg {int mlen; int /*<<< orphan*/  mhdr; } ;
struct mbuf {char* pos; char* last; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRLF_LEN ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 int /*<<< orphan*/  NC_ENOMEM ; 
 int /*<<< orphan*/  NC_OK ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,char*,int) ; 
 scalar_t__ FUNC6 (struct mbuf*) ; 
 struct mbuf* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int FUNC9 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static rstatus_t
FUNC12(struct msg *dst, struct msg *src)
{
    struct mbuf *mbuf, *nbuf;
    uint8_t *p;
    uint32_t len = 0;
    uint32_t bytes = 0;
    uint32_t i = 0;

    for (mbuf = FUNC1(&src->mhdr);
         mbuf && FUNC6(mbuf);
         mbuf = FUNC1(&src->mhdr)) {

        FUNC11(&src->mhdr, mbuf);
        FUNC10(mbuf);
    }

    mbuf = FUNC1(&src->mhdr);
    if (mbuf == NULL) {
        return NC_OK;           /* key not exists */
    }
    p = mbuf->pos;

    /*
     * get : VALUE key 0 len\r\nval\r\n
     * gets: VALUE key 0 len cas\r\nval\r\n
     */
    FUNC0(*p == 'V');
    for (i = 0; i < 3; i++) {                 /*  eat 'VALUE key 0 '  */
        for (; *p != ' ';) {
            p++;
        }
        p++;
    }

    len = 0;
    for (; p < mbuf->last && FUNC3(*p); p++) {
        len = len * 10 + (uint32_t)(*p - '0');
    }

    for (; p < mbuf->last && ('\r' != *p); p++) { /* eat cas for gets */
        ;
    }

    len += CRLF_LEN * 2;
    len += (p - mbuf->pos);

    bytes = len;

    /* copy len bytes to dst */
    for (; mbuf;) {
        if (FUNC9(mbuf) <= len) {   /* steal this mbuf from src to dst */
            nbuf = FUNC2(mbuf, next);
            FUNC11(&src->mhdr, mbuf);
            FUNC8(&dst->mhdr, mbuf);
            len -= FUNC9(mbuf);
            mbuf = nbuf;
        } else {                        /* split it */
            nbuf = FUNC7();
            if (nbuf == NULL) {
                return NC_ENOMEM;
            }
            FUNC5(nbuf, mbuf->pos, len);
            FUNC8(&dst->mhdr, nbuf);
            mbuf->pos += len;
            break;
        }
    }

    dst->mlen += bytes;
    src->mlen -= bytes;
    FUNC4(LOG_VVERB, "memcache_copy_bulk copy bytes: %d", bytes);
    return NC_OK;
}