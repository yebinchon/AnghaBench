
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_8__ {int record; } ;
struct TYPE_7__ {int len; } ;
typedef TYPE_1__ FORMSTR ;
typedef TYPE_2__ FORMAT ;
typedef int DWORD ;


 scalar_t__ MSI_RecordGetStringW (int ,int,scalar_t__*,int*) ;
 scalar_t__ MSI_RecordIsNull (int ,int) ;
 int atoiW (scalar_t__*) ;
 int get_formstr_data (TYPE_2__*,TYPE_1__*) ;
 int lstrcpynW (scalar_t__*,int ,int) ;
 scalar_t__* msi_alloc (int) ;
 int msi_free (scalar_t__*) ;

__attribute__((used)) static WCHAR *deformat_index( FORMAT *format, FORMSTR *str, int *ret_len )
{
    WCHAR *val, *ret;
    DWORD len;
    int field;

    if (!(val = msi_alloc( (str->len + 1) * sizeof(WCHAR) ))) return ((void*)0);
    lstrcpynW(val, get_formstr_data(format, str), str->len + 1);
    field = atoiW( val );
    msi_free( val );

    if (MSI_RecordIsNull( format->record, field ) ||
        MSI_RecordGetStringW( format->record, field, ((void*)0), &len )) return ((void*)0);

    len++;
    if (!(ret = msi_alloc( len * sizeof(WCHAR) ))) return ((void*)0);
    ret[0] = 0;
    if (MSI_RecordGetStringW( format->record, field, ret, &len ))
    {
        msi_free( ret );
        return ((void*)0);
    }
    *ret_len = len;
    return ret;
}
