#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  package; scalar_t__ retval; } ;
typedef  TYPE_1__ msi_dialog ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ IDABORT ; 
 scalar_t__ IDCANCEL ; 
 scalar_t__ IDOK ; 
 scalar_t__ IDRETRY ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 

__attribute__((used)) static UINT FUNC5( msi_dialog *dialog, const WCHAR *argument )
{
    static const WCHAR exitW[] = {'E','x','i','t',0};
    static const WCHAR retryW[] = {'R','e','t','r','y',0};
    static const WCHAR ignoreW[] = {'I','g','n','o','r','e',0};
    static const WCHAR returnW[] = {'R','e','t','u','r','n',0};

    if (!FUNC4( argument, exitW ))
        dialog->retval = IDCANCEL;
    else if (!FUNC4( argument, retryW ))
        dialog->retval = IDRETRY;
    else if (!FUNC4( argument, ignoreW ))
        dialog->retval = IDOK;
    else if (!FUNC4( argument, returnW ))
        dialog->retval = 0;
    else
    {
        FUNC0("Unknown argument string %s\n", FUNC1(argument));
        dialog->retval = IDABORT;
    }
    FUNC2( dialog->package, dialog->name );
    FUNC3( dialog );
    return ERROR_SUCCESS;
}