
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const WCHAR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 int ConcatenatedIndex (char*,char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FONT_DIR_NT ;
 char* FromWide (int const*) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumValue (int ,int,int const*,int*,int *,int *,int ,int*) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 int free (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int GetFileFontByName( const WCHAR * font_name, char **psz_filename, int *i_index )
{
    HKEY hKey;
    WCHAR vbuffer[MAX_PATH];
    WCHAR dbuffer[256];

    if( RegOpenKeyEx(HKEY_LOCAL_MACHINE, FONT_DIR_NT, 0, KEY_READ, &hKey)
            != ERROR_SUCCESS )
        return 1;

    char *font_name_temp = FromWide( font_name );

    for( int index = 0;; index++ )
    {
        DWORD vbuflen = MAX_PATH - 1;
        DWORD dbuflen = 255;

        LONG i_result = RegEnumValue( hKey, index, vbuffer, &vbuflen,
                                      ((void*)0), ((void*)0), (LPBYTE)dbuffer, &dbuflen);
        if( i_result != ERROR_SUCCESS )
        {
            free( font_name_temp );
            RegCloseKey( hKey );
            return i_result;
        }

        char *psz_value = FromWide( vbuffer );

        char *s = strchr( psz_value,'(' );
        if( s != ((void*)0) && s != psz_value ) s[-1] = '\0';

        int i_concat_idx = 0;
        if( ( i_concat_idx = ConcatenatedIndex( psz_value, font_name_temp ) ) != -1 )
        {
            *i_index = i_concat_idx;
            *psz_filename = FromWide( dbuffer );
            free( psz_value );
            break;
        }

        free( psz_value );
    }

    free( font_name_temp );
    RegCloseKey( hKey );
    return 0;
}
