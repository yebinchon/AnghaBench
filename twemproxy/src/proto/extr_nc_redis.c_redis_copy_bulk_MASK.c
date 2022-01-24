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
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRLF_LEN ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ NC_ERROR ; 
 scalar_t__ NC_OK ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC10 (struct msg*,char*,int) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static rstatus_t
FUNC11(struct msg *dst, struct msg *src)
{
    struct mbuf *mbuf, *nbuf;
    uint8_t *p;
    uint32_t len = 0;
    uint32_t bytes = 0;
    rstatus_t status;

    for (mbuf = FUNC1(&src->mhdr);
         mbuf && FUNC5(mbuf);
         mbuf = FUNC1(&src->mhdr)) {

        FUNC9(&src->mhdr, mbuf);
        FUNC8(mbuf);
    }

    mbuf = FUNC1(&src->mhdr);
    if (mbuf == NULL) {
        return NC_ERROR;
    }

    p = mbuf->pos;
    FUNC0(*p == '$');
    p++;

    if (p[0] == '-' && p[1] == '1') {
        len = 1 + 2 + CRLF_LEN;             /* $-1\r\n */
        p = mbuf->pos + len;
    } else {
        len = 0;
        for (; p < mbuf->last && FUNC3(*p); p++) {
            len = len * 10 + (uint32_t)(*p - '0');
        }
        len += CRLF_LEN * 2;
        len += (p - mbuf->pos);
    }
    bytes = len;

    /* copy len bytes to dst */
    for (; mbuf;) {
        if (FUNC7(mbuf) <= len) {     /* steal this buf from src to dst */
            nbuf = FUNC2(mbuf, next);
            FUNC9(&src->mhdr, mbuf);
            if (dst != NULL) {
                FUNC6(&dst->mhdr, mbuf);
            } else {
                FUNC8(mbuf);
            }
            len -= FUNC7(mbuf);
            mbuf = nbuf;
        } else {                             /* split it */
            if (dst != NULL) {
                status = FUNC10(dst, mbuf->pos, len);
                if (status != NC_OK) {
                    return status;
                }
            }
            mbuf->pos += len;
            break;
        }
    }

    if (dst != NULL) {
        dst->mlen += bytes;
    }
    src->mlen -= bytes;
    FUNC4(LOG_VVERB, "redis_copy_bulk copy bytes: %d", bytes);
    return NC_OK;
}