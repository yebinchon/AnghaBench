
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; scalar_t__ psz_uri; } ;
typedef TYPE_1__ input_item_t ;


 char* strdup (scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

char *input_item_GetURI( input_item_t *p_i )
{
    vlc_mutex_lock( &p_i->lock );

    char *psz_s = p_i->psz_uri ? strdup( p_i->psz_uri ) : ((void*)0);

    vlc_mutex_unlock( &p_i->lock );
    return psz_s;
}
