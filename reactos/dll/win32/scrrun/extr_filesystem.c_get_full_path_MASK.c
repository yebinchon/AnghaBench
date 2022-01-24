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
struct TYPE_3__ {int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  char* BSTR ;

/* Variables and functions */
 int MAX_PATH ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  bsW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static BSTR FUNC4(BSTR path, const WIN32_FIND_DATAW *data)
{
    int len = FUNC1(path);
    WCHAR buffW[MAX_PATH];

    FUNC3(buffW, path);
    if (path[len-1] != '\\')
        FUNC2(buffW, bsW);
    FUNC2(buffW, data->cFileName);

    return FUNC0(buffW);
}