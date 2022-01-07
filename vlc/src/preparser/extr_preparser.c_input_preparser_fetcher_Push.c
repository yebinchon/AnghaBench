
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fetcher; } ;
typedef TYPE_1__ input_preparser_t ;
typedef int input_item_t ;
typedef int input_item_meta_request_option_t ;
typedef int input_fetcher_callbacks_t ;


 int input_fetcher_Push (scalar_t__,int *,int ,int const*,void*) ;

void input_preparser_fetcher_Push( input_preparser_t *preparser,
    input_item_t *item, input_item_meta_request_option_t options,
    const input_fetcher_callbacks_t *cbs, void *cbs_userdata )
{
    if( preparser->fetcher )
        input_fetcher_Push( preparser->fetcher, item, options,
                            cbs, cbs_userdata );
}
