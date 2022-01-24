#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  const WCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FONT_DIR_NT ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static int FUNC7( const WCHAR * font_name, char **psz_filename, int *i_index )
{
    HKEY hKey;
    WCHAR vbuffer[MAX_PATH];
    WCHAR dbuffer[256];

    if( FUNC4(HKEY_LOCAL_MACHINE, FONT_DIR_NT, 0, KEY_READ, &hKey)
            != ERROR_SUCCESS )
        return 1;

    char *font_name_temp = FUNC1( font_name );

    for( int index = 0;; index++ )
    {
        DWORD vbuflen = MAX_PATH - 1;
        DWORD dbuflen = 255;

        LONG i_result = FUNC3( hKey, index, vbuffer, &vbuflen,
                                      NULL, NULL, (LPBYTE)dbuffer, &dbuflen);
        if( i_result != ERROR_SUCCESS )
        {
            FUNC5( font_name_temp );
            FUNC2( hKey );
            return i_result;
        }

        char *psz_value = FUNC1( vbuffer );

        char *s = FUNC6( psz_value,'(' );
        if( s != NULL && s != psz_value ) s[-1] = '\0';

        int i_concat_idx = 0;
        if( ( i_concat_idx = FUNC0( psz_value, font_name_temp ) ) != -1 )
        {
            *i_index = i_concat_idx;
            *psz_filename = FUNC1( dbuffer );
            FUNC5( psz_value );
            break;
        }

        FUNC5( psz_value );
    }

    FUNC5( font_name_temp );
    FUNC2( hKey );
    return 0;
}