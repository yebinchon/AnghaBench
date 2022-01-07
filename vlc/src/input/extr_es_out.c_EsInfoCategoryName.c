
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_meta_id; } ;
typedef TYPE_1__ es_out_id_t ;


 int _ (char*) ;
 int asprintf (char**,int ,int ) ;

__attribute__((used)) static char *EsInfoCategoryName( es_out_id_t* es )
{
    char *psz_category;

    if( asprintf( &psz_category, _("Stream %d"), es->i_meta_id ) == -1 )
        return ((void*)0);

    return psz_category;
}
