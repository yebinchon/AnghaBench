
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
struct TYPE_9__ {int TargetPath; } ;
typedef TYPE_1__ MSIFILE ;
typedef TYPE_2__ FORMSTR ;
typedef TYPE_3__ FORMAT ;
typedef int DWORD ;
typedef int BOOL ;


 int GetShortPathNameW (int ,int *,int) ;
 int get_formstr_data (TYPE_3__*,TYPE_2__*) ;
 int lstrcpynW (int *,int ,int) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;
 TYPE_1__* msi_get_loaded_file (int ,int *) ;
 int * strdupW (int ) ;
 int strlenW (int *) ;

__attribute__((used)) static WCHAR *deformat_file( FORMAT *format, FORMSTR *str, BOOL shortname, int *ret_len )
{
    WCHAR *key, *ret = ((void*)0);
    const MSIFILE *file;
    DWORD len = 0;

    if (!(key = msi_alloc( (str->len + 1) * sizeof(WCHAR) ))) return ((void*)0);
    lstrcpynW(key, get_formstr_data(format, str), str->len + 1);

    if (!(file = msi_get_loaded_file( format->package, key ))) goto done;
    if (!shortname)
    {
        if ((ret = strdupW( file->TargetPath ))) len = strlenW( ret );
        goto done;
    }
    if ((len = GetShortPathNameW(file->TargetPath, ((void*)0), 0)) <= 0)
    {
        if ((ret = strdupW( file->TargetPath ))) len = strlenW( ret );
        goto done;
    }
    len++;
    if ((ret = msi_alloc( len * sizeof(WCHAR) )))
        len = GetShortPathNameW( file->TargetPath, ret, len );

done:
    msi_free( key );
    *ret_len = len;
    return ret;
}
