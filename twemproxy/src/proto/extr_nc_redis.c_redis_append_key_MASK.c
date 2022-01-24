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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct msg {int /*<<< orphan*/  mlen; int /*<<< orphan*/  keys; } ;
struct mbuf {scalar_t__ last; } ;
struct keypos {scalar_t__ end; scalar_t__ start; } ;
typedef  int /*<<< orphan*/  rstatus_t ;
typedef  int /*<<< orphan*/  printbuf ;

/* Variables and functions */
 scalar_t__ CRLF ; 
 scalar_t__ CRLF_LEN ; 
 int /*<<< orphan*/  NC_ENOMEM ; 
 int /*<<< orphan*/  NC_OK ; 
 struct keypos* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct mbuf* FUNC2 (struct msg*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char*,scalar_t__) ; 

__attribute__((used)) static rstatus_t
FUNC4(struct msg *r, uint8_t *key, uint32_t keylen)
{
    uint32_t len;
    struct mbuf *mbuf;
    uint8_t printbuf[32];
    struct keypos *kpos;

    /* 1. keylen */
    len = (uint32_t)FUNC3(printbuf, sizeof(printbuf), "$%d\r\n", keylen);
    mbuf = FUNC2(r, len);
    if (mbuf == NULL) {
        return NC_ENOMEM;
    }
    FUNC1(mbuf, printbuf, len);
    r->mlen += len;

    /* 2. key */
    mbuf = FUNC2(r, keylen);
    if (mbuf == NULL) {
        return NC_ENOMEM;
    }

    kpos = FUNC0(r->keys);
    if (kpos == NULL) {
        return NC_ENOMEM;
    }

    kpos->start = mbuf->last;
    kpos->end = mbuf->last + keylen;
    FUNC1(mbuf, key, keylen);
    r->mlen += keylen;

    /* 3. CRLF */
    mbuf = FUNC2(r, CRLF_LEN);
    if (mbuf == NULL) {
        return NC_ENOMEM;
    }
    FUNC1(mbuf, (uint8_t *)CRLF, CRLF_LEN);
    r->mlen += (uint32_t)CRLF_LEN;

    return NC_OK;
}