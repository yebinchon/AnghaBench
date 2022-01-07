
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * p_module; int * cbs; } ;
struct TYPE_6__ {TYPE_2__ m; int lock; int cbs; } ;
typedef TYPE_1__ vlc_medialibrary_t ;
typedef int libvlc_int_t ;


 int VLC_OBJECT (int *) ;
 int callbacks ;
 int * module_need (TYPE_2__*,char*,int *,int) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_custom_create (int ,int,char*) ;
 int vlc_list_init (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_object_delete (TYPE_2__*) ;

vlc_medialibrary_t* libvlc_MlCreate( libvlc_int_t* p_libvlc )
{
    vlc_medialibrary_t *p_ml = vlc_custom_create( VLC_OBJECT( p_libvlc ),
                                                  sizeof( *p_ml ), "medialibrary" );
    if ( unlikely( p_ml == ((void*)0) ) )
        return ((void*)0);
    vlc_mutex_init( &p_ml->lock );
    vlc_list_init( &p_ml->cbs );
    p_ml->m.cbs = &callbacks;
    p_ml->m.p_module = module_need( &p_ml->m, "medialibrary", ((void*)0), 0 );
    if ( p_ml->m.p_module == ((void*)0) )
    {
        vlc_mutex_destroy( &p_ml->lock );
        vlc_object_delete(&p_ml->m);
        return ((void*)0);
    }
    return p_ml;
}
