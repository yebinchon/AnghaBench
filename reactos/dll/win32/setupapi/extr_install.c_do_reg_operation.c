
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dw ;
typedef scalar_t__ const WCHAR ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ const BYTE ;
typedef int BOOL ;


 int FALSE ;
 int FLG_ADDREG_APPEND ;
 int FLG_ADDREG_BINVALUETYPE ;
 int FLG_ADDREG_DELREG_BIT ;
 int FLG_ADDREG_DELVAL ;
 int FLG_ADDREG_KEYONLY ;
 int FLG_ADDREG_KEYONLY_COMMON ;
 int FLG_ADDREG_NOCLOBBER ;
 int FLG_ADDREG_OVERWRITEONLY ;



 int FLG_ADDREG_TYPE_MASK ;



 int FLG_DELREG_KEYONLY_COMMON ;
 int FLG_DELREG_MULTI_SZ_DELSTRING ;
 int GetProcessHeap () ;
 scalar_t__ const* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__ const*) ;
 int NtDeleteKey (int ) ;
 int REG_BINARY ;
 int REG_DWORD ;
 int REG_EXPAND_SZ ;
 int REG_MULTI_SZ ;
 int REG_NONE ;
 int REG_SZ ;
 int RegDeleteValueW (int ,scalar_t__ const*) ;
 int RegQueryValueExW (int ,scalar_t__ const*,int *,int *,int *,int *) ;
 int RegSetValueExW (int ,scalar_t__ const*,int ,int,scalar_t__ const*,int) ;
 int SetupGetBinaryField (int *,int,scalar_t__ const*,int,int*) ;
 int SetupGetFieldCount (int *) ;
 int SetupGetMultiSzFieldW (int *,int,scalar_t__ const*,int,int*) ;
 int SetupGetStringFieldW (int *,int,scalar_t__ const*,int,int*) ;
 int TRACE (char*,int,int) ;
 int TRUE ;
 int append_multi_sz_value (int ,scalar_t__ const*,scalar_t__ const*,int) ;
 int debugstr_w (scalar_t__ const*) ;
 int delete_multi_sz_value (int ,scalar_t__ const*,scalar_t__ const*) ;
 int strtoulW (scalar_t__ const*,int *,int ) ;

__attribute__((used)) static BOOL do_reg_operation( HKEY hkey, const WCHAR *value, INFCONTEXT *context, INT flags )
{
    DWORD type, size;

    if (flags & (FLG_ADDREG_DELREG_BIT | FLG_ADDREG_DELVAL))
    {
        if (*value && !(flags & FLG_DELREG_KEYONLY_COMMON))
        {
            if ((flags & FLG_DELREG_MULTI_SZ_DELSTRING) == FLG_DELREG_MULTI_SZ_DELSTRING)
            {
                WCHAR *str;

                if (!SetupGetStringFieldW( context, 5, ((void*)0), 0, &size ) || !size) return TRUE;
                if (!(str = HeapAlloc( GetProcessHeap(), 0, size * sizeof(WCHAR) ))) return FALSE;
                SetupGetStringFieldW( context, 5, str, size, ((void*)0) );
                delete_multi_sz_value( hkey, value, str );
                HeapFree( GetProcessHeap(), 0, str );
            }
            else RegDeleteValueW( hkey, value );
        }
        else NtDeleteKey( hkey );
        return TRUE;
    }

    if (flags & (FLG_ADDREG_KEYONLY|FLG_ADDREG_KEYONLY_COMMON)) return TRUE;

    if (flags & (FLG_ADDREG_NOCLOBBER|FLG_ADDREG_OVERWRITEONLY))
    {
        BOOL exists = !RegQueryValueExW( hkey, value, ((void*)0), ((void*)0), ((void*)0), ((void*)0) );
        if (exists && (flags & FLG_ADDREG_NOCLOBBER)) return TRUE;
        if (!exists && (flags & FLG_ADDREG_OVERWRITEONLY)) return TRUE;
    }

    switch(flags & FLG_ADDREG_TYPE_MASK)
    {
    case 128: type = REG_SZ; break;
    case 130: type = REG_MULTI_SZ; break;
    case 131: type = REG_EXPAND_SZ; break;
    case 133: type = REG_BINARY; break;
    case 132: type = REG_DWORD; break;
    case 129: type = REG_NONE; break;
    default: type = flags >> 16; break;
    }

    if (!(flags & FLG_ADDREG_BINVALUETYPE) ||
        (type == REG_DWORD && SetupGetFieldCount(context) == 5))
    {
        static const WCHAR empty;
        WCHAR *str = ((void*)0);

        if (type == REG_MULTI_SZ)
        {
            if (!SetupGetMultiSzFieldW( context, 5, ((void*)0), 0, &size )) size = 0;
            if (size)
            {
                if (!(str = HeapAlloc( GetProcessHeap(), 0, size * sizeof(WCHAR) ))) return FALSE;
                SetupGetMultiSzFieldW( context, 5, str, size, ((void*)0) );
            }
            if (flags & FLG_ADDREG_APPEND)
            {
                if (!str) return TRUE;
                append_multi_sz_value( hkey, value, str, size );
                HeapFree( GetProcessHeap(), 0, str );
                return TRUE;
            }

        }
        else
        {
            if (!SetupGetStringFieldW( context, 5, ((void*)0), 0, &size )) size = 0;
            if (size)
            {
                if (!(str = HeapAlloc( GetProcessHeap(), 0, size * sizeof(WCHAR) ))) return FALSE;
                SetupGetStringFieldW( context, 5, str, size, ((void*)0) );
            }
        }

        if (type == REG_DWORD)
        {
            DWORD dw = str ? strtoulW( str, ((void*)0), 0 ) : 0;
            TRACE( "setting dword %s to %x\n", debugstr_w(value), dw );
            RegSetValueExW( hkey, value, 0, type, (BYTE *)&dw, sizeof(dw) );
        }
        else
        {
            TRACE( "setting value %s to %s\n", debugstr_w(value), debugstr_w(str) );
            if (str) RegSetValueExW( hkey, value, 0, type, (BYTE *)str, size * sizeof(WCHAR) );
            else RegSetValueExW( hkey, value, 0, type, (const BYTE *)&empty, sizeof(WCHAR) );
        }
        HeapFree( GetProcessHeap(), 0, str );
        return TRUE;
    }
    else
    {
        BYTE *data = ((void*)0);

        if (!SetupGetBinaryField( context, 5, ((void*)0), 0, &size )) size = 0;
        if (size)
        {
            if (!(data = HeapAlloc( GetProcessHeap(), 0, size ))) return FALSE;
            TRACE( "setting binary data %s len %d\n", debugstr_w(value), size );
            SetupGetBinaryField( context, 5, data, size, ((void*)0) );
        }
        RegSetValueExW( hkey, value, 0, type, data, size );
        HeapFree( GetProcessHeap(), 0, data );
        return TRUE;
    }
}
