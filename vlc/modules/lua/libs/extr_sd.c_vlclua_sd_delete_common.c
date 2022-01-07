
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;


 int assert (int ) ;
 int input_item_Release (int *) ;

__attribute__((used)) static int vlclua_sd_delete_common( input_item_t **pp_item )
{
    assert(pp_item != ((void*)0));

    input_item_t *p_item = *pp_item;
    if (p_item != ((void*)0))
        input_item_Release( p_item );

    return 1;
}
