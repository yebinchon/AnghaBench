
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_7__ {char* psz_value; } ;
typedef TYPE_2__ info_t ;
typedef int info_category_t ;


 int * InputItemFindCat (TYPE_1__*,int *,char const*) ;
 TYPE_2__* info_category_FindInfo (int const*,char const*) ;
 char* strdup (char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

char *input_item_GetInfo( input_item_t *p_i,
                          const char *psz_cat,
                          const char *psz_name )
{
    vlc_mutex_lock( &p_i->lock );

    const info_category_t *p_cat = InputItemFindCat( p_i, ((void*)0), psz_cat );
    if( p_cat )
    {
        info_t *p_info = info_category_FindInfo( p_cat, psz_name );
        if( p_info && p_info->psz_value )
        {
            char *psz_ret = strdup( p_info->psz_value );
            vlc_mutex_unlock( &p_i->lock );
            return psz_ret;
        }
    }
    vlc_mutex_unlock( &p_i->lock );
    return strdup( "" );
}
