
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_categories; TYPE_2__** pp_categories; int lock; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_6__ {int psz_name; } ;
typedef TYPE_2__ info_category_t ;


 int strcmp (int ,char const*) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static info_category_t *InputItemFindCat( input_item_t *p_item,
                                          int *pi_index, const char *psz_cat )
{
    vlc_mutex_assert( &p_item->lock );
    for( int i = 0; i < p_item->i_categories && psz_cat; i++ )
    {
        info_category_t *p_cat = p_item->pp_categories[i];

        if( !strcmp( p_cat->psz_name, psz_cat ) )
        {
            if( pi_index )
                *pi_index = i;
            return p_cat;
        }
    }
    return ((void*)0);
}
