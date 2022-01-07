
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flv_header_bytes_sent; scalar_t__ flv_header_len; } ;
typedef TYPE_1__ stream_sys_t ;



__attribute__((used)) static inline bool header_unfinished( stream_sys_t *p_sys )
{
    return p_sys->flv_header_bytes_sent < p_sys->flv_header_len;
}
