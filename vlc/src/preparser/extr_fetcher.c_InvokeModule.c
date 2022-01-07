
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_8__ {int e_scope; int * p_item; } ;
typedef TYPE_1__ meta_fetcher_t ;
typedef int input_item_t ;
struct TYPE_9__ {int owner; } ;
typedef TYPE_2__ input_fetcher_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * module_need (TYPE_1__*,char const*,int *,int) ;
 int module_unneed (TYPE_1__*,int *) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* vlc_custom_create (int ,int,char const*) ;
 int vlc_object_delete (TYPE_1__*) ;

__attribute__((used)) static int InvokeModule( input_fetcher_t* fetcher, input_item_t* item,
                         int scope, char const* type )
{
    meta_fetcher_t* mf = vlc_custom_create( fetcher->owner,
                                            sizeof( *mf ), type );
    if( unlikely( !mf ) )
        return VLC_ENOMEM;

    mf->e_scope = scope;
    mf->p_item = item;

    module_t* mf_module = module_need( mf, type, ((void*)0), 0 );

    if( mf_module )
        module_unneed( mf, mf_module );

    vlc_object_delete(mf);

    return VLC_SUCCESS;
}
