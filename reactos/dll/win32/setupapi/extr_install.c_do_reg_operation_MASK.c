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
typedef  int /*<<< orphan*/  dw ;
typedef  scalar_t__ const WCHAR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  scalar_t__ const BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int FLG_ADDREG_APPEND ; 
 int FLG_ADDREG_BINVALUETYPE ; 
 int FLG_ADDREG_DELREG_BIT ; 
 int FLG_ADDREG_DELVAL ; 
 int FLG_ADDREG_KEYONLY ; 
 int FLG_ADDREG_KEYONLY_COMMON ; 
 int FLG_ADDREG_NOCLOBBER ; 
 int FLG_ADDREG_OVERWRITEONLY ; 
#define  FLG_ADDREG_TYPE_BINARY 133 
#define  FLG_ADDREG_TYPE_DWORD 132 
#define  FLG_ADDREG_TYPE_EXPAND_SZ 131 
 int FLG_ADDREG_TYPE_MASK ; 
#define  FLG_ADDREG_TYPE_MULTI_SZ 130 
#define  FLG_ADDREG_TYPE_NONE 129 
#define  FLG_ADDREG_TYPE_SZ 128 
 int FLG_DELREG_KEYONLY_COMMON ; 
 int FLG_DELREG_MULTI_SZ_DELSTRING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int REG_BINARY ; 
 int REG_DWORD ; 
 int REG_EXPAND_SZ ; 
 int REG_MULTI_SZ ; 
 int REG_NONE ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ,int,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__ const*,int,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__ const*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,scalar_t__ const*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__ const*,scalar_t__ const*,int) ; 
 int FUNC13 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__ const*,scalar_t__ const*) ; 
 int FUNC15 (scalar_t__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC16( HKEY hkey, const WCHAR *value, INFCONTEXT *context, INT flags )
{
    DWORD type, size;

    if (flags & (FLG_ADDREG_DELREG_BIT | FLG_ADDREG_DELVAL))  /* deletion */
    {
        if (*value && !(flags & FLG_DELREG_KEYONLY_COMMON))
        {
            if ((flags & FLG_DELREG_MULTI_SZ_DELSTRING) == FLG_DELREG_MULTI_SZ_DELSTRING)
            {
                WCHAR *str;

                if (!FUNC10( context, 5, NULL, 0, &size ) || !size) return TRUE;
                if (!(str = FUNC1( FUNC0(), 0, size * sizeof(WCHAR) ))) return FALSE;
                FUNC10( context, 5, str, size, NULL );
                FUNC14( hkey, value, str );
                FUNC2( FUNC0(), 0, str );
            }
            else FUNC4( hkey, value );
        }
        else FUNC3( hkey );
        return TRUE;
    }

    if (flags & (FLG_ADDREG_KEYONLY|FLG_ADDREG_KEYONLY_COMMON)) return TRUE;

    if (flags & (FLG_ADDREG_NOCLOBBER|FLG_ADDREG_OVERWRITEONLY))
    {
        BOOL exists = !FUNC5( hkey, value, NULL, NULL, NULL, NULL );
        if (exists && (flags & FLG_ADDREG_NOCLOBBER)) return TRUE;
        if (!exists && (flags & FLG_ADDREG_OVERWRITEONLY)) return TRUE;
    }

    switch(flags & FLG_ADDREG_TYPE_MASK)
    {
    case FLG_ADDREG_TYPE_SZ:        type = REG_SZ; break;
    case FLG_ADDREG_TYPE_MULTI_SZ:  type = REG_MULTI_SZ; break;
    case FLG_ADDREG_TYPE_EXPAND_SZ: type = REG_EXPAND_SZ; break;
    case FLG_ADDREG_TYPE_BINARY:    type = REG_BINARY; break;
    case FLG_ADDREG_TYPE_DWORD:     type = REG_DWORD; break;
    case FLG_ADDREG_TYPE_NONE:      type = REG_NONE; break;
    default:                        type = flags >> 16; break;
    }

    if (!(flags & FLG_ADDREG_BINVALUETYPE) ||
        (type == REG_DWORD && FUNC8(context) == 5))
    {
        static const WCHAR empty;
        WCHAR *str = NULL;

        if (type == REG_MULTI_SZ)
        {
            if (!FUNC9( context, 5, NULL, 0, &size )) size = 0;
            if (size)
            {
                if (!(str = FUNC1( FUNC0(), 0, size * sizeof(WCHAR) ))) return FALSE;
                FUNC9( context, 5, str, size, NULL );
            }
            if (flags & FLG_ADDREG_APPEND)
            {
                if (!str) return TRUE;
                FUNC12( hkey, value, str, size );
                FUNC2( FUNC0(), 0, str );
                return TRUE;
            }
            /* else fall through to normal string handling */
        }
        else
        {
            if (!FUNC10( context, 5, NULL, 0, &size )) size = 0;
            if (size)
            {
                if (!(str = FUNC1( FUNC0(), 0, size * sizeof(WCHAR) ))) return FALSE;
                FUNC10( context, 5, str, size, NULL );
            }
        }

        if (type == REG_DWORD)
        {
            DWORD dw = str ? FUNC15( str, NULL, 0 ) : 0;
            FUNC11( "setting dword %s to %x\n", FUNC13(value), dw );
            FUNC6( hkey, value, 0, type, (BYTE *)&dw, sizeof(dw) );
        }
        else
        {
            FUNC11( "setting value %s to %s\n", FUNC13(value), FUNC13(str) );
            if (str) FUNC6( hkey, value, 0, type, (BYTE *)str, size * sizeof(WCHAR) );
            else FUNC6( hkey, value, 0, type, (const BYTE *)&empty, sizeof(WCHAR) );
        }
        FUNC2( FUNC0(), 0, str );
        return TRUE;
    }
    else  /* get the binary data */
    {
        BYTE *data = NULL;

        if (!FUNC7( context, 5, NULL, 0, &size )) size = 0;
        if (size)
        {
            if (!(data = FUNC1( FUNC0(), 0, size ))) return FALSE;
            FUNC11( "setting binary data %s len %d\n", FUNC13(value), size );
            FUNC7( context, 5, data, size, NULL );
        }
        FUNC6( hkey, value, 0, type, data, size );
        FUNC2( FUNC0(), 0, data );
        return TRUE;
    }
}