
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ addons_finder_t ;
struct TYPE_5__ {struct TYPE_5__* psz_tempfile; } ;


 int free (TYPE_2__*) ;
 int vlc_unlink (TYPE_2__*) ;

__attribute__((used)) static void Close(vlc_object_t *p_this)
{
    addons_finder_t *p_finder = (addons_finder_t*) p_this;
    if ( p_finder->p_sys->psz_tempfile )
    {
        vlc_unlink( p_finder->p_sys->psz_tempfile );
        free( p_finder->p_sys->psz_tempfile );
    }
    free( p_finder->p_sys );
}
