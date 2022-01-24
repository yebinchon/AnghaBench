#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pcre ;
typedef  int /*<<< orphan*/  ngx_regex_t ;
struct TYPE_10__ {scalar_t__ name; TYPE_6__* regex; } ;
typedef  TYPE_3__ ngx_regex_elt_t ;
struct TYPE_8__ {void* data; void* len; } ;
struct TYPE_9__ {size_t len; scalar_t__ data; } ;
struct TYPE_11__ {scalar_t__ captures; scalar_t__ named_captures; scalar_t__ name_size; scalar_t__ names; TYPE_1__ err; TYPE_2__ pattern; TYPE_6__* regex; int /*<<< orphan*/  pool; scalar_t__ options; } ;
typedef  TYPE_4__ ngx_regex_compile_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_12__ {int /*<<< orphan*/ * code; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  PCRE_INFO_CAPTURECOUNT ; 
 int /*<<< orphan*/  PCRE_INFO_NAMECOUNT ; 
 int /*<<< orphan*/  PCRE_INFO_NAMEENTRYSIZE ; 
 int /*<<< orphan*/  PCRE_INFO_NAMETABLE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ngx_pcre_studies ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,void*,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int,char const**,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 

ngx_int_t
FUNC7(ngx_regex_compile_t *rc)
{
    int               n, erroff;
    char             *p;
    pcre             *re;
    const char       *errstr;
    ngx_regex_elt_t  *elt;

    FUNC3(rc->pool);

    re = FUNC5((const char *) rc->pattern.data, (int) rc->options,
                      &errstr, &erroff, NULL);

    /* ensure that there is no current pool */
    FUNC2();

    if (re == NULL) {
        if ((size_t) erroff == rc->pattern.len) {
           rc->err.len = FUNC4(rc->err.data, rc->err.len,
                              "pcre_compile() failed: %s in \"%V\"",
                               errstr, &rc->pattern)
                      - rc->err.data;

        } else {
           rc->err.len = FUNC4(rc->err.data, rc->err.len,
                              "pcre_compile() failed: %s in \"%V\" at \"%s\"",
                               errstr, &rc->pattern, rc->pattern.data + erroff)
                      - rc->err.data;
        }

        return NGX_ERROR;
    }

    rc->regex = FUNC1(rc->pool, sizeof(ngx_regex_t));
    if (rc->regex == NULL) {
        goto nomem;
    }

    rc->regex->code = re;

    /* do not study at runtime */

    if (ngx_pcre_studies != NULL) {
        elt = FUNC0(ngx_pcre_studies);
        if (elt == NULL) {
            goto nomem;
        }

        elt->regex = rc->regex;
        elt->name = rc->pattern.data;
    }

    n = FUNC6(re, NULL, PCRE_INFO_CAPTURECOUNT, &rc->captures);
    if (n < 0) {
        p = "pcre_fullinfo(\"%V\", PCRE_INFO_CAPTURECOUNT) failed: %d";
        goto failed;
    }

    if (rc->captures == 0) {
        return NGX_OK;
    }

    n = FUNC6(re, NULL, PCRE_INFO_NAMECOUNT, &rc->named_captures);
    if (n < 0) {
        p = "pcre_fullinfo(\"%V\", PCRE_INFO_NAMECOUNT) failed: %d";
        goto failed;
    }

    if (rc->named_captures == 0) {
        return NGX_OK;
    }

    n = FUNC6(re, NULL, PCRE_INFO_NAMEENTRYSIZE, &rc->name_size);
    if (n < 0) {
        p = "pcre_fullinfo(\"%V\", PCRE_INFO_NAMEENTRYSIZE) failed: %d";
        goto failed;
    }

    n = FUNC6(re, NULL, PCRE_INFO_NAMETABLE, &rc->names);
    if (n < 0) {
        p = "pcre_fullinfo(\"%V\", PCRE_INFO_NAMETABLE) failed: %d";
        goto failed;
    }

    return NGX_OK;

failed:

    rc->err.len = FUNC4(rc->err.data, rc->err.len, p, &rc->pattern, n)
                  - rc->err.data;
    return NGX_ERROR;

nomem:

    rc->err.len = FUNC4(rc->err.data, rc->err.len,
                               "regex \"%V\" compilation failed: no memory",
                               &rc->pattern)
                  - rc->err.data;
    return NGX_ERROR;
}