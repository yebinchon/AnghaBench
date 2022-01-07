
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_meta_type_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ input_item_t ;


 char* input_item_GetMetaLocked (TYPE_1__*,int ) ;
 char* strdup (char const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

char *input_item_GetMeta( input_item_t *p_i, vlc_meta_type_t meta_type )
{
    vlc_mutex_lock( &p_i->lock );
    const char *value = input_item_GetMetaLocked( p_i, meta_type );
    char *psz = value ? strdup( value ) : ((void*)0);
    vlc_mutex_unlock( &p_i->lock );
    return psz;
}
