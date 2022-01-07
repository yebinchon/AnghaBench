
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_cat; } ;
typedef TYPE_1__ vlc_es_id_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;



enum es_format_category_e
vlc_es_id_GetCat(vlc_es_id_t *id)
{
    return id->i_cat;
}
