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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  char* LPWSTR ;
typedef  int* LPDWORD ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int REG_BINARY ; 
 int REG_DWORD ; 
 int REG_EXPAND_SZ ; 
 int REG_MULTI_SZ ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char**) ; 
 scalar_t__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BYTE *FUNC7( MSIPACKAGE *package, const WCHAR *value, DWORD len, DWORD *type, DWORD *size )
{
    BYTE *data;

    if (!value)
    {
        *size = sizeof(WCHAR);
        *type = REG_SZ;
        if ((data = FUNC2( *size ))) *(WCHAR *)data = 0;
        return data;
    }
    if (value[0]=='#' && value[1]!='#' && value[1]!='%')
    {
        if (value[1]=='x')
        {
            LPWSTR ptr;
            CHAR byte[5];
            LPWSTR deformated = NULL;
            int count;

            FUNC1(package, &value[2], &deformated);

            /* binary value type */
            ptr = deformated;
            *type = REG_BINARY;
            if (FUNC5(ptr)%2)
                *size = (FUNC5(ptr)/2)+1;
            else
                *size = FUNC5(ptr)/2;

            data = FUNC2(*size);

            byte[0] = '0'; 
            byte[1] = 'x'; 
            byte[4] = 0; 
            count = 0;
            /* if uneven pad with a zero in front */
            if (FUNC5(ptr)%2)
            {
                byte[2]= '0';
                byte[3]= *ptr;
                ptr++;
                data[count] = (BYTE)FUNC6(byte,NULL,0);
                count ++;
                FUNC0("Uneven byte count\n");
            }
            while (*ptr)
            {
                byte[2]= *ptr;
                ptr++;
                byte[3]= *ptr;
                ptr++;
                data[count] = (BYTE)FUNC6(byte,NULL,0);
                count ++;
            }
            FUNC3(deformated);

            FUNC0("Data %i bytes(%i)\n",*size,count);
        }
        else
        {
            LPWSTR deformated;
            LPWSTR p;
            DWORD d = 0;
            FUNC1(package, &value[1], &deformated);

            *type=REG_DWORD; 
            *size = sizeof(DWORD);
            data = FUNC2(*size);
            p = deformated;
            if (*p == '-')
                p++;
            while (*p)
            {
                if ( (*p < '0') || (*p > '9') )
                    break;
                d *= 10;
                d += (*p - '0');
                p++;
            }
            if (deformated[0] == '-')
                d = -d;
            *(LPDWORD)data = d;
            FUNC0("DWORD %i\n",*(LPDWORD)data);

            FUNC3(deformated);
        }
    }
    else
    {
        const WCHAR *ptr = value;

        *type = REG_SZ;
        if (value[0] == '#')
        {
            ptr++; len--;
            if (value[1] == '%')
            {
                ptr++; len--;
                *type = REG_EXPAND_SZ;
            }
        }
        data = (BYTE *)FUNC4( ptr, len );
        if (len > FUNC5( (const WCHAR *)data )) *type = REG_MULTI_SZ;
        *size = (len + 1) * sizeof(WCHAR);
    }
    return data;
}