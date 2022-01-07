
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int psz_name; } ;
typedef TYPE_1__ input_item_t ;


 char* strdup (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

char *input_item_GetName( input_item_t *p_item )
{
    vlc_mutex_lock( &p_item->lock );

    char *psz_name = p_item->psz_name ? strdup( p_item->psz_name ) : ((void*)0);

    vlc_mutex_unlock( &p_item->lock );
    return psz_name;
}
