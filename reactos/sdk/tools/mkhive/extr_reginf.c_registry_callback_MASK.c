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
typedef  scalar_t__ WCHAR ;
typedef  int ULONG ;
typedef  scalar_t__* PWCHAR ;
typedef  int /*<<< orphan*/ * PINFCONTEXT ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int FLG_ADDREG_DELREG_BIT ; 
 int FLG_ADDREG_OVERWRITEONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int MAX_INF_STRING_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 size_t FUNC11 (scalar_t__*) ; 

__attribute__((used)) static BOOL
FUNC12(HINF hInf, PCWSTR Section, BOOL Delete)
{
    WCHAR Buffer[MAX_INF_STRING_LENGTH];
    PWCHAR ValuePtr;
    ULONG Flags;
    size_t Length;

    PINFCONTEXT Context = NULL;
    HKEY KeyHandle;
    BOOL Ok;

    Ok = FUNC1(hInf, Section, NULL, &Context) == 0;
    if (!Ok)
        return TRUE; /* Don't fail if the section isn't present */

    for (Ok = TRUE; Ok; Ok = (FUNC2(Context, Context) == 0))
    {
        /* Get root */
        if (FUNC5(Context, 1, Buffer, sizeof(Buffer)/sizeof(WCHAR), NULL) != 0)
            continue;
        if (!FUNC10(Buffer))
            continue;

        /* Get key */
        Length = FUNC11(Buffer);
        if (FUNC5(Context, 2, Buffer + Length, sizeof(Buffer)/sizeof(WCHAR) - (ULONG)Length, NULL) != 0)
            *Buffer = 0;

        FUNC0("KeyName: <%S>\n", Buffer);

        /* Get flags */
        if (FUNC4(Context, 4, (INT*)&Flags) != 0)
            Flags = 0;

        if (Delete)
        {
            if (!Flags)
                Flags = FLG_ADDREG_DELREG_BIT;
            else if (!(Flags & FLG_ADDREG_DELREG_BIT))
                continue; /* ignore this entry */
        }
        else
        {
            if (Flags & FLG_ADDREG_DELREG_BIT)
                continue; /* ignore this entry */
        }

        FUNC0("Flags: 0x%x\n", Flags);

        if (Delete || (Flags & FLG_ADDREG_OVERWRITEONLY))
        {
            if (FUNC8(NULL, Buffer, &KeyHandle) != ERROR_SUCCESS)
            {
                FUNC0("RegOpenKey(%S) failed\n", Buffer);
                continue;  /* ignore if it doesn't exist */
            }
        }
        else
        {
            if (FUNC7(NULL, Buffer, &KeyHandle) != ERROR_SUCCESS)
            {
                FUNC0("RegCreateKey(%S) failed\n", Buffer);
                continue;
            }
        }

        /* Get value name */
        if (FUNC5(Context, 3, Buffer, sizeof(Buffer)/sizeof(WCHAR), NULL) == 0)
        {
            ValuePtr = Buffer;
        }
        else
        {
            ValuePtr = NULL;
        }

        /* And now do it */
        if (!FUNC9(KeyHandle, ValuePtr, Context, Flags))
        {
            FUNC6(KeyHandle);
            return FALSE;
        }

        FUNC6(KeyHandle);
    }

    FUNC3(Context);

    return TRUE;
}