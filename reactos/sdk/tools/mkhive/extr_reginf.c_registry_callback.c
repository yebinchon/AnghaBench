
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int ULONG ;
typedef scalar_t__* PWCHAR ;
typedef int * PINFCONTEXT ;
typedef int PCWSTR ;
typedef int INT ;
typedef int HKEY ;
typedef int HINF ;
typedef int Buffer ;
typedef int BOOL ;


 int DPRINT (char*,int) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int FLG_ADDREG_DELREG_BIT ;
 int FLG_ADDREG_OVERWRITEONLY ;
 scalar_t__ InfHostFindFirstLine (int ,int ,int *,int **) ;
 scalar_t__ InfHostFindNextLine (int *,int *) ;
 int InfHostFreeContext (int *) ;
 scalar_t__ InfHostGetIntField (int *,int,int *) ;
 scalar_t__ InfHostGetStringField (int *,int,scalar_t__*,int,int *) ;
 int MAX_INF_STRING_LENGTH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyW (int *,scalar_t__*,int *) ;
 scalar_t__ RegOpenKeyW (int *,scalar_t__*,int *) ;
 int TRUE ;
 int do_reg_operation (int ,scalar_t__*,int *,int) ;
 int get_root_key (scalar_t__*) ;
 size_t strlenW (scalar_t__*) ;

__attribute__((used)) static BOOL
registry_callback(HINF hInf, PCWSTR Section, BOOL Delete)
{
    WCHAR Buffer[MAX_INF_STRING_LENGTH];
    PWCHAR ValuePtr;
    ULONG Flags;
    size_t Length;

    PINFCONTEXT Context = ((void*)0);
    HKEY KeyHandle;
    BOOL Ok;

    Ok = InfHostFindFirstLine(hInf, Section, ((void*)0), &Context) == 0;
    if (!Ok)
        return TRUE;

    for (Ok = TRUE; Ok; Ok = (InfHostFindNextLine(Context, Context) == 0))
    {

        if (InfHostGetStringField(Context, 1, Buffer, sizeof(Buffer)/sizeof(WCHAR), ((void*)0)) != 0)
            continue;
        if (!get_root_key(Buffer))
            continue;


        Length = strlenW(Buffer);
        if (InfHostGetStringField(Context, 2, Buffer + Length, sizeof(Buffer)/sizeof(WCHAR) - (ULONG)Length, ((void*)0)) != 0)
            *Buffer = 0;

        DPRINT("KeyName: <%S>\n", Buffer);


        if (InfHostGetIntField(Context, 4, (INT*)&Flags) != 0)
            Flags = 0;

        if (Delete)
        {
            if (!Flags)
                Flags = FLG_ADDREG_DELREG_BIT;
            else if (!(Flags & FLG_ADDREG_DELREG_BIT))
                continue;
        }
        else
        {
            if (Flags & FLG_ADDREG_DELREG_BIT)
                continue;
        }

        DPRINT("Flags: 0x%x\n", Flags);

        if (Delete || (Flags & FLG_ADDREG_OVERWRITEONLY))
        {
            if (RegOpenKeyW(((void*)0), Buffer, &KeyHandle) != ERROR_SUCCESS)
            {
                DPRINT("RegOpenKey(%S) failed\n", Buffer);
                continue;
            }
        }
        else
        {
            if (RegCreateKeyW(((void*)0), Buffer, &KeyHandle) != ERROR_SUCCESS)
            {
                DPRINT("RegCreateKey(%S) failed\n", Buffer);
                continue;
            }
        }


        if (InfHostGetStringField(Context, 3, Buffer, sizeof(Buffer)/sizeof(WCHAR), ((void*)0)) == 0)
        {
            ValuePtr = Buffer;
        }
        else
        {
            ValuePtr = ((void*)0);
        }


        if (!do_reg_operation(KeyHandle, ValuePtr, Context, Flags))
        {
            RegCloseKey(KeyHandle);
            return FALSE;
        }

        RegCloseKey(KeyHandle);
    }

    InfHostFreeContext(Context);

    return TRUE;
}
