
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int lock_hold; int lock; int * p_parent; int rc; int p_vout_dummy; } ;
typedef TYPE_1__ input_resource_t ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int vlc_atomic_rc_init (int *) ;
 int vlc_mutex_init (int *) ;
 int vout_CreateDummy (int *) ;

input_resource_t *input_resource_New( vlc_object_t *p_parent )
{
    input_resource_t *p_resource = calloc( 1, sizeof(*p_resource) );
    if( !p_resource )
        return ((void*)0);

    p_resource->p_vout_dummy = vout_CreateDummy(p_parent);
    if( !p_resource->p_vout_dummy )
    {
        free( p_resource );
        return ((void*)0);
    }

    vlc_atomic_rc_init( &p_resource->rc );
    p_resource->p_parent = p_parent;
    vlc_mutex_init( &p_resource->lock );
    vlc_mutex_init( &p_resource->lock_hold );
    return p_resource;
}
