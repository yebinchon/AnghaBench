#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/ * FileName; } ;
typedef  int /*<<< orphan*/  ShortPath ;
typedef  TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef  int /*<<< orphan*/ * PCHAR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static VOID FUNC8(LPCSTR FilePath, PDOS_FILE_DESCRIPTOR Descriptor)
{
    CHAR ShortPath[MAX_PATH];
    PCHAR Name;
    PCHAR Extension;

    /* Try to get the short path */
    if (!FUNC0(FilePath, ShortPath, sizeof(ShortPath)))
    {
        /* If it failed, just use the uppercase long path */
        FUNC6(ShortPath, FilePath, sizeof(ShortPath) - 1);
        FUNC2(ShortPath);
    }

    /* Get the name part */
    Name = FUNC7(ShortPath, '\\');
    if (Name == NULL) Name = ShortPath;

    /* Find the extension */
    Extension = FUNC4(Name, '.');

    if (Extension)
    {
        /* Terminate the name string, and move the pointer to after the dot */
        *Extension++ = 0;
    }

    /* Copy the name into the SFT descriptor */
    FUNC1(Descriptor->FileName, Name, FUNC3(FUNC5(Name), 8));

    if (Extension)
    {
        /* Copy the extension too */
        FUNC1(&Descriptor->FileName[8], Extension, FUNC3(FUNC5(Extension), 3));
    }
}