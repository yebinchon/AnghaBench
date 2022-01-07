
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_15__ {int* data; size_t len; } ;
typedef TYPE_6__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int addr; int mask; } ;
struct TYPE_11__ {int* s6_addr; } ;
struct TYPE_10__ {int* s6_addr; } ;
struct TYPE_12__ {TYPE_2__ mask; TYPE_1__ addr; } ;
struct TYPE_14__ {TYPE_4__ in; TYPE_3__ in6; } ;
struct TYPE_16__ {int family; TYPE_5__ u; } ;
typedef TYPE_7__ ngx_cidr_t ;


 int AF_INET ;

 int INADDR_NONE ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int htonl (int ) ;
 scalar_t__ ngx_atoi (int*,int) ;
 scalar_t__ ngx_inet6_addr (int*,size_t,int*) ;
 int ngx_inet_addr (int*,size_t) ;
 int ngx_memset (int*,int,int) ;
 int* ngx_strlchr (int*,int*,char) ;

ngx_int_t
ngx_ptocidr(ngx_str_t *text, ngx_cidr_t *cidr)
{
    u_char *addr, *mask, *last;
    size_t len;
    ngx_int_t shift;





    addr = text->data;
    last = addr + text->len;

    mask = ngx_strlchr(addr, last, '/');
    len = (mask ? mask : last) - addr;

    cidr->u.in.addr = ngx_inet_addr(addr, len);

    if (cidr->u.in.addr != INADDR_NONE) {
        cidr->family = AF_INET;

        if (mask == ((void*)0)) {
            cidr->u.in.mask = 0xffffffff;
            return NGX_OK;
        }
    } else {
        return NGX_ERROR;
    }

    mask++;

    shift = ngx_atoi(mask, last - mask);
    if (shift == NGX_ERROR) {
        return NGX_ERROR;
    }

    switch (cidr->family) {
    default:
        if (shift > 32) {
            return NGX_ERROR;
        }

        if (shift) {
            cidr->u.in.mask = htonl((uint32_t) (0xffffffffu << (32 - shift)));

        } else {

            cidr->u.in.mask = 0;
        }

        if (cidr->u.in.addr == (cidr->u.in.addr & cidr->u.in.mask)) {
            return NGX_OK;
        }

        cidr->u.in.addr &= cidr->u.in.mask;

        return NGX_DONE;
    }
}
