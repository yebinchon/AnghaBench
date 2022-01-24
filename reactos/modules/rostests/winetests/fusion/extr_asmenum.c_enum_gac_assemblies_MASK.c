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
struct list {int dummy; } ;
struct TYPE_4__ {char* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAA ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (struct list*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct list *assemblies, char path[MAX_PATH])
{
    WIN32_FIND_DATAA ffd;
    HANDLE hfind;
    char *end = path + FUNC6( path );

    FUNC4( end, "\\*", path + MAX_PATH - end );
    hfind = FUNC1(path, &ffd);
    if (hfind == INVALID_HANDLE_VALUE) return;
    end++;

    do
    {
        if (!FUNC5(ffd.cFileName, ".") || !FUNC5(ffd.cFileName, "..")) continue;
        FUNC4( end, ffd.cFileName, path + MAX_PATH - end );
        FUNC3( assemblies, ffd.cFileName, path );
    } while (FUNC2(hfind, &ffd) != 0);

    FUNC0(hfind);
}