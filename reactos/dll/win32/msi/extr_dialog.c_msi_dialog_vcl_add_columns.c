
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int msi_dialog ;
struct TYPE_5__ {int hwnd; } ;
typedef TYPE_1__ msi_control ;
typedef int lvc ;
typedef char WCHAR ;
struct TYPE_6__ {int mask; char* pszText; int cx; } ;
typedef int MSIRECORD ;
typedef TYPE_2__ LVCOLUMNW ;
typedef int LPCWSTR ;
typedef int LPARAM ;
typedef int DWORD ;


 int LVCF_SUBITEM ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 int LVM_INSERTCOLUMNW ;
 int MSI_RecordGetString (int *,int) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int atolW (char*) ;
 int * column_keys ;
 int lstrcpynW (char*,int,int) ;
 char* msi_alloc (int) ;
 char* msi_dialog_get_uitext (int *,int ) ;
 int msi_free (char*) ;
 int str_is_number (char*) ;
 int strchrW (int,char) ;
 int strcmpW (char*,int ) ;
 int strncmpW (char*,char const*,int) ;
 int szZero ;

__attribute__((used)) static void msi_dialog_vcl_add_columns( msi_dialog *dialog, msi_control *control, MSIRECORD *rec )
{
    LPCWSTR text = MSI_RecordGetString( rec, 10 );
    LPCWSTR begin = text, end;
    WCHAR *num;
    LVCOLUMNW lvc;
    DWORD count = 0;

    static const WCHAR negative[] = {'-',0};

    if (!text) return;

    while ((begin = strchrW( begin, '{' )) && count < 5)
    {
        if (!(end = strchrW( begin, '}' )))
            return;

        num = msi_alloc( (end-begin+1)*sizeof(WCHAR) );
        if (!num)
            return;

        lstrcpynW( num, begin + 1, end - begin );
        begin += end - begin + 1;


        if ( !num[0] || !strcmpW( num, szZero ) )
        {
            count++;
            msi_free( num );
            continue;
        }




        if ( !strncmpW( num, negative, 1 ) || !str_is_number( num ) ) {
            msi_free( num );
            return;
        }

        ZeroMemory( &lvc, sizeof(lvc) );
        lvc.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
        lvc.cx = atolW( num );
        lvc.pszText = msi_dialog_get_uitext( dialog, column_keys[count] );

        SendMessageW( control->hwnd, LVM_INSERTCOLUMNW, count++, (LPARAM)&lvc );
        msi_free( lvc.pszText );
        msi_free( num );
    }
}
