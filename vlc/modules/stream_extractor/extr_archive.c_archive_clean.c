
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_archive; int * p_entry; } ;
typedef TYPE_1__ private_sys_t ;
typedef int libarchive_t ;


 int VLC_SUCCESS ;
 int archive_entry_free (int *) ;
 int archive_read_free (int *) ;

__attribute__((used)) static int archive_clean( private_sys_t* p_sys )
{
    libarchive_t* p_arc = p_sys->p_archive;

    if( p_sys->p_entry )
        archive_entry_free( p_sys->p_entry );

    if( p_arc )
        archive_read_free( p_arc );

    p_sys->p_entry = ((void*)0);
    p_sys->p_archive = ((void*)0);

    return VLC_SUCCESS;
}
