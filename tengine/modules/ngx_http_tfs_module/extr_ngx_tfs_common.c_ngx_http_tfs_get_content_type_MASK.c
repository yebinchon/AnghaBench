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
typedef  int /*<<< orphan*/  ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_AGAIN ; 
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

ngx_int_t
FUNC2(u_char *data, ngx_str_t *type)
{
    if (FUNC0(data, "GIF", 3) == 0) {
        FUNC1(type, "image/gif");
        return NGX_OK;
    }

    if (FUNC0(data, "\xff\xd8\xff", 3) == 0) {
        FUNC1(type, "image/jpeg");
        return NGX_OK;
    }

    if (FUNC0(data, "\x89\x50\x4e\x47\x0d\x0a\x1a\x0a", 8) == 0) {
        FUNC1(type, "image/png");
        return NGX_OK;
    }

    if ((FUNC0(data, "CWS", 3) == 0)
              ||(FUNC0(data, "FWS", 3) == 0))
    {
        FUNC1(type, "application/x-shockwave-flash");
        return NGX_OK;
    }

    if ((FUNC0(data, "BM", 2) == 0)
              ||(FUNC0(data, "BA", 2) == 0)
              ||(FUNC0(data, "CI", 2) == 0)
              ||(FUNC0(data, "CP", 2) == 0)
              ||(FUNC0(data, "IC", 2) == 0)
              ||(FUNC0(data, "PI", 2) == 0))
    {
        FUNC1(type, "image/bmp");
        return NGX_OK;
    }

    if ((FUNC0(data, "\115\115\000\052", 4) == 0)
            ||(FUNC0(data, "\111\111\052\000", 4) == 0)
            ||(FUNC0(data, "\115\115\000\053\000\010\000\000", 8) == 0)
            ||(FUNC0(data, "\111\111\053\000\010\000\000\000", 8) == 0))
    {
        FUNC1(type, "image/tiff");
        return NGX_OK;
    }

    return NGX_AGAIN;
}