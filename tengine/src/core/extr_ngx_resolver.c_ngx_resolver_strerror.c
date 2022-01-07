
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;


 int NGX_RESOLVE_TIMEDOUT ;

char *
ngx_resolver_strerror(ngx_int_t err)
{
    static char *errors[] = {
        "Format error",
        "Server failure",
        "Host not found",
        "Unimplemented",
        "Operation refused"
    };

    if (err > 0 && err < 6) {
        return errors[err - 1];
    }

    if (err == NGX_RESOLVE_TIMEDOUT) {
        return "Operation timed out";
    }

    return "Unknown error";
}
