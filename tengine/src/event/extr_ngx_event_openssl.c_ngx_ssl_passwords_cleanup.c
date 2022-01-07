
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_4__ {size_t nelts; TYPE_1__* elts; } ;
typedef TYPE_2__ ngx_array_t ;


 int ngx_explicit_memzero (int ,int ) ;

__attribute__((used)) static void
ngx_ssl_passwords_cleanup(void *data)
{
    ngx_array_t *passwords = data;

    ngx_str_t *pwd;
    ngx_uint_t i;

    pwd = passwords->elts;

    for (i = 0; i < passwords->nelts; i++) {
        ngx_explicit_memzero(pwd[i].data, pwd[i].len);
    }
}
