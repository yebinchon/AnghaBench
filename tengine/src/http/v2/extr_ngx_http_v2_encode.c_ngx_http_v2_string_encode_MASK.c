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
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_uint_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_V2_ENCODE_HUFF ; 
 int /*<<< orphan*/  NGX_HTTP_V2_ENCODE_RAW ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

u_char *
FUNC5(u_char *dst, u_char *src, size_t len, u_char *tmp,
    ngx_uint_t lower)
{
    size_t  hlen;

    hlen = FUNC1(src, len, tmp, lower);

    if (hlen > 0) {
        *dst = NGX_HTTP_V2_ENCODE_HUFF;
        dst = FUNC3(dst, FUNC2(7), hlen);
        return FUNC0(dst, tmp, hlen);
    }

    *dst = NGX_HTTP_V2_ENCODE_RAW;
    dst = FUNC3(dst, FUNC2(7), len);

    if (lower) {
        FUNC4(dst, src, len);
        return dst + len;
    }

    return FUNC0(dst, src, len);
}