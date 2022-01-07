
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_name; int lock; int p_meta; } ;
typedef TYPE_1__ input_item_t ;


 int EMPTY_STR (char const*) ;
 char* strdup (char const*) ;
 char* vlc_meta_Get (int ,int ) ;
 int vlc_meta_Title ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

char *input_item_GetTitleFbName( input_item_t *p_item )
{
    char *psz_ret;
    vlc_mutex_lock( &p_item->lock );

    if( !p_item->p_meta )
    {
        psz_ret = p_item->psz_name ? strdup( p_item->psz_name ) : ((void*)0);
        vlc_mutex_unlock( &p_item->lock );
        return psz_ret;
    }

    const char *psz_title = vlc_meta_Get( p_item->p_meta, vlc_meta_Title );
    if( !EMPTY_STR( psz_title ) )
        psz_ret = strdup( psz_title );
    else
        psz_ret = p_item->psz_name ? strdup( p_item->psz_name ) : ((void*)0);

    vlc_mutex_unlock( &p_item->lock );
    return psz_ret;
}
