
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int time_t ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef int ngx_int_t ;
typedef int ngx_fd_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_time () ;
 int utimes (char*,struct timeval*) ;

ngx_int_t
ngx_set_file_time(u_char *name, ngx_fd_t fd, time_t s)
{
    struct timeval tv[2];

    tv[0].tv_sec = ngx_time();
    tv[0].tv_usec = 0;
    tv[1].tv_sec = s;
    tv[1].tv_usec = 0;

    if (utimes((char *) name, tv) != -1) {
        return NGX_OK;
    }

    return NGX_ERROR;
}
