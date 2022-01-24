#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int InWhatSequence; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEQUENCE_EXEC ; 
 int SEQUENCE_UI ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int msidbCustomActionTypeClientRepeat ; 
 int msidbCustomActionTypeFirstSequence ; 
 int msidbCustomActionTypeOncePerProcess ; 

__attribute__((used)) static BOOL FUNC3(MSIPACKAGE *package, LPCWSTR action, UINT options)
{
    if ((options & msidbCustomActionTypeClientRepeat) ==
            msidbCustomActionTypeClientRepeat)
    {
        if (!(package->InWhatSequence & SEQUENCE_UI &&
            package->InWhatSequence & SEQUENCE_EXEC))
        {
            FUNC0("Skipping action due to dbCustomActionTypeClientRepeat option.\n");
            return FALSE;
        }
    }
    else if (options & msidbCustomActionTypeFirstSequence)
    {
        if (package->InWhatSequence & SEQUENCE_UI &&
            package->InWhatSequence & SEQUENCE_EXEC )
        {
            FUNC0("Skipping action due to msidbCustomActionTypeFirstSequence option.\n");
            return FALSE;
        }
    }
    else if (options & msidbCustomActionTypeOncePerProcess)
    {
        if (FUNC1(package, action))
        {
            FUNC0("Skipping action due to msidbCustomActionTypeOncePerProcess option.\n");
            return FALSE;
        }
        else
            FUNC2(package, action);
    }

    return TRUE;
}