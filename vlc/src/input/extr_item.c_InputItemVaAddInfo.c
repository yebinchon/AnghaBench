
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_6__ {int pp_categories; int i_categories; int lock; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_7__ {int psz_value; } ;
typedef TYPE_2__ info_t ;
typedef int info_category_t ;


 int * InputItemFindCat (TYPE_1__*,int *,char const*) ;
 int TAB_APPEND (int ,int ,int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * info_category_New (char const*) ;
 TYPE_2__* info_category_VaAddInfo (int *,char const*,char const*,int ) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static int InputItemVaAddInfo( input_item_t *p_i,
                               const char *psz_cat,
                               const char *psz_name,
                               const char *psz_format, va_list args )
{
    vlc_mutex_assert( &p_i->lock );

    info_category_t *p_cat = InputItemFindCat( p_i, ((void*)0), psz_cat );
    if( !p_cat )
    {
        p_cat = info_category_New( psz_cat );
        if( !p_cat )
            return VLC_ENOMEM;
        TAB_APPEND(p_i->i_categories, p_i->pp_categories, p_cat);
    }
    info_t *p_info = info_category_VaAddInfo( p_cat, psz_name, psz_format, args );
    if( !p_info || !p_info->psz_value )
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
