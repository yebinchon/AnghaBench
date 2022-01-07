
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ offset; int fd; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ CURRENT_FILE_SIZE ;
 scalar_t__ fstat (int ,struct stat*) ;

__attribute__((used)) static void UpdateFileSize( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;
    struct stat st;

    if( p_sys->size >= p_sys->offset )
        return;


    if( fstat( p_sys->fd, &st ) )
        return;
    if( (uint64_t)st.st_size <= CURRENT_FILE_SIZE )
        return;

    p_sys->size -= CURRENT_FILE_SIZE;
    CURRENT_FILE_SIZE = st.st_size;
    p_sys->size += CURRENT_FILE_SIZE;
}
