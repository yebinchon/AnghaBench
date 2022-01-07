
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* package; } ;
struct TYPE_9__ {int len; } ;
struct TYPE_8__ {int db; } ;
typedef TYPE_2__ FORMSTR ;
typedef TYPE_3__ FORMAT ;
typedef int DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 int get_formstr_data (TYPE_3__*,TYPE_2__*) ;
 int lstrcpynW (int *,int ,int) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;
 scalar_t__ msi_get_property (int ,int *,int *,int*) ;

__attribute__((used)) static WCHAR *deformat_property( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *prop, *ret;
    DWORD len = 0;
    UINT r;

    if (!(prop = msi_alloc( (str->len + 1) * sizeof(WCHAR) ))) return ((void*)0);
    lstrcpynW( prop, get_formstr_data(format, str), str->len + 1 );

    r = msi_get_property( format->package->db, prop, ((void*)0), &len );
    if (r != ERROR_SUCCESS && r != ERROR_MORE_DATA)
    {
        msi_free( prop );
        return ((void*)0);
    }
    len++;
    if ((ret = msi_alloc( len * sizeof(WCHAR) )))
        msi_get_property( format->package->db, prop, ret, &len );
    msi_free( prop );
    *ret_len = len;
    return ret;
}
