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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  gcry_md_hd_t ;

/* Variables and functions */
 int /*<<< orphan*/  RND_HASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC9(void *buf, size_t buflen, const void *seed, size_t seedlen, uint32_t idx) {
        gcry_md_hd_t hd, hd2;
        size_t olen, cpylen;
        uint32_t ctr;

        olen = FUNC3(RND_HASH);
        FUNC4(&hd, RND_HASH, 0);
        FUNC7(hd, seed, seedlen);
        FUNC5(hd, (idx >> 24) & 0xff);
        FUNC5(hd, (idx >> 16) & 0xff);
        FUNC5(hd, (idx >>  8) & 0xff);
        FUNC5(hd, (idx >>  0) & 0xff);

        for (ctr = 0; buflen; ctr++) {
                FUNC1(&hd2, hd);
                FUNC5(hd2, (ctr >> 24) & 0xff);
                FUNC5(hd2, (ctr >> 16) & 0xff);
                FUNC5(hd2, (ctr >>  8) & 0xff);
                FUNC5(hd2, (ctr >>  0) & 0xff);
                FUNC2(hd2);
                cpylen = (buflen < olen) ? buflen : olen;
                FUNC8(buf, FUNC6(hd2, RND_HASH), cpylen);
                FUNC0(hd2);
                buf += cpylen;
                buflen -= cpylen;
        }
        FUNC0(hd);
}