
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {int package; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_9__ {scalar_t__ Action; int Directory; } ;
typedef TYPE_1__ MSICOMPONENT ;
typedef TYPE_2__ FORMSTR ;
typedef TYPE_3__ FORMAT ;


 scalar_t__ INSTALLSTATE_SOURCE ;
 int get_formstr_data (TYPE_3__*,TYPE_2__*) ;
 int lstrcpynW (int *,int ,int) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;
 TYPE_1__* msi_get_loaded_component (int ,int *) ;
 int msi_get_target_folder (int ,int ) ;
 int * msi_resolve_source_folder (int ,int ,int *) ;
 int * strdupW (int ) ;
 int strlenW (int *) ;

__attribute__((used)) static WCHAR *deformat_component( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *key, *ret;
    MSICOMPONENT *comp;

    if (!(key = msi_alloc( (str->len + 1) * sizeof(WCHAR) ))) return ((void*)0);
    lstrcpynW(key, get_formstr_data(format, str), str->len + 1);

    if (!(comp = msi_get_loaded_component( format->package, key )))
    {
        msi_free( key );
        return ((void*)0);
    }
    if (comp->Action == INSTALLSTATE_SOURCE)
        ret = msi_resolve_source_folder( format->package, comp->Directory, ((void*)0) );
    else
        ret = strdupW( msi_get_target_folder( format->package, comp->Directory ) );

    if (ret) *ret_len = strlenW( ret );
    else *ret_len = 0;
    msi_free( key );
    return ret;
}
