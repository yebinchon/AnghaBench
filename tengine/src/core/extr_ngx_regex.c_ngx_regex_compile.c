
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pcre ;
typedef int ngx_regex_t ;
struct TYPE_10__ {scalar_t__ name; TYPE_6__* regex; } ;
typedef TYPE_3__ ngx_regex_elt_t ;
struct TYPE_8__ {void* data; void* len; } ;
struct TYPE_9__ {size_t len; scalar_t__ data; } ;
struct TYPE_11__ {scalar_t__ captures; scalar_t__ named_captures; scalar_t__ name_size; scalar_t__ names; TYPE_1__ err; TYPE_2__ pattern; TYPE_6__* regex; int pool; scalar_t__ options; } ;
typedef TYPE_4__ ngx_regex_compile_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {int * code; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int PCRE_INFO_CAPTURECOUNT ;
 int PCRE_INFO_NAMECOUNT ;
 int PCRE_INFO_NAMEENTRYSIZE ;
 int PCRE_INFO_NAMETABLE ;
 TYPE_3__* ngx_list_push (int *) ;
 TYPE_6__* ngx_pcalloc (int ,int) ;
 int * ngx_pcre_studies ;
 int ngx_regex_malloc_done () ;
 int ngx_regex_malloc_init (int ) ;
 void* ngx_snprintf (void*,void*,char*,...) ;
 int * pcre_compile (char const*,int,char const**,int*,int *) ;
 int pcre_fullinfo (int *,int *,int ,scalar_t__*) ;

ngx_int_t
ngx_regex_compile(ngx_regex_compile_t *rc)
{
    int n, erroff;
    char *p;
    pcre *re;
    const char *errstr;
    ngx_regex_elt_t *elt;

    ngx_regex_malloc_init(rc->pool);

    re = pcre_compile((const char *) rc->pattern.data, (int) rc->options,
                      &errstr, &erroff, ((void*)0));


    ngx_regex_malloc_done();

    if (re == ((void*)0)) {
        if ((size_t) erroff == rc->pattern.len) {
           rc->err.len = ngx_snprintf(rc->err.data, rc->err.len,
                              "pcre_compile() failed: %s in \"%V\"",
                               errstr, &rc->pattern)
                      - rc->err.data;

        } else {
           rc->err.len = ngx_snprintf(rc->err.data, rc->err.len,
                              "pcre_compile() failed: %s in \"%V\" at \"%s\"",
                               errstr, &rc->pattern, rc->pattern.data + erroff)
                      - rc->err.data;
        }

        return NGX_ERROR;
    }

    rc->regex = ngx_pcalloc(rc->pool, sizeof(ngx_regex_t));
    if (rc->regex == ((void*)0)) {
        goto nomem;
    }

    rc->regex->code = re;



    if (ngx_pcre_studies != ((void*)0)) {
        elt = ngx_list_push(ngx_pcre_studies);
        if (elt == ((void*)0)) {
            goto nomem;
        }

        elt->regex = rc->regex;
        elt->name = rc->pattern.data;
    }

    n = pcre_fullinfo(re, ((void*)0), PCRE_INFO_CAPTURECOUNT, &rc->captures);
    if (n < 0) {
        p = "pcre_fullinfo(\"%V\", PCRE_INFO_CAPTURECOUNT) failed: %d";
        goto failed;
    }

    if (rc->captures == 0) {
        return NGX_OK;
    }

    n = pcre_fullinfo(re, ((void*)0), PCRE_INFO_NAMECOUNT, &rc->named_captures);
    if (n < 0) {
        p = "pcre_fullinfo(\"%V\", PCRE_INFO_NAMECOUNT) failed: %d";
        goto failed;
    }

    if (rc->named_captures == 0) {
        return NGX_OK;
    }

    n = pcre_fullinfo(re, ((void*)0), PCRE_INFO_NAMEENTRYSIZE, &rc->name_size);
    if (n < 0) {
        p = "pcre_fullinfo(\"%V\", PCRE_INFO_NAMEENTRYSIZE) failed: %d";
        goto failed;
    }

    n = pcre_fullinfo(re, ((void*)0), PCRE_INFO_NAMETABLE, &rc->names);
    if (n < 0) {
        p = "pcre_fullinfo(\"%V\", PCRE_INFO_NAMETABLE) failed: %d";
        goto failed;
    }

    return NGX_OK;

failed:

    rc->err.len = ngx_snprintf(rc->err.data, rc->err.len, p, &rc->pattern, n)
                  - rc->err.data;
    return NGX_ERROR;

nomem:

    rc->err.len = ngx_snprintf(rc->err.data, rc->err.len,
                               "regex \"%V\" compilation failed: no memory",
                               &rc->pattern)
                  - rc->err.data;
    return NGX_ERROR;
}
