
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ b_read_only; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int libvlc_printerr (char*) ;

__attribute__((used)) static inline
bool mlist_is_writable( libvlc_media_list_t *p_mlist )
{
    if( !p_mlist||p_mlist->b_read_only )
    {

        libvlc_printerr( "Attempt to write a read-only media list" );
        return 0;
    }
    return 1;
}
