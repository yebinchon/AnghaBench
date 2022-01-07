
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_array_t ;
struct TYPE_5__ {int fmt; } ;
typedef TYPE_1__ es_pair_t ;


 int es_format_Clean (int *) ;
 int free (TYPE_1__*) ;
 int vlc_array_index_of_item (int *,TYPE_1__*) ;
 int vlc_array_remove (int *,int ) ;

__attribute__((used)) static void es_pair_Remove(vlc_array_t *p_array, es_pair_t *p_pair)
{
    vlc_array_remove(p_array, vlc_array_index_of_item(p_array, p_pair));
    es_format_Clean(&p_pair->fmt);
    free(p_pair);
}
