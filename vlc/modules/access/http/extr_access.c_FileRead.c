
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int block_t ;
struct TYPE_5__ {int resource; } ;
typedef TYPE_2__ access_sys_t ;


 int * vlc_http_file_read (int ) ;

__attribute__((used)) static block_t *FileRead(stream_t *access, bool *restrict eof)
{
    access_sys_t *sys = access->p_sys;

    block_t *b = vlc_http_file_read(sys->resource);
    if (b == ((void*)0))
        *eof = 1;
    return b;
}
