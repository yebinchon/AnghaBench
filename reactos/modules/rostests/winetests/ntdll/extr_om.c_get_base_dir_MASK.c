#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_4__ {TYPE_1__* Peb; } ;
struct TYPE_3__ {int SessionId; } ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  DIRECTORY_QUERY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  OBJ_OPENIF ; 
 scalar_t__ FUNC4 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static HANDLE FUNC11(void)
{
    static const char objname[] = "om.c_get_base_dir_obj";
    NTSTATUS status;
    UNICODE_STRING str;
    OBJECT_ATTRIBUTES attr;
    HANDLE dir, h;
    char name[40];

    h = FUNC0(NULL, FALSE, objname);
    FUNC5(h != 0, "CreateMutexA failed got ret=%p (%d)\n", h, FUNC1());
    FUNC2(&attr, &str, OBJ_OPENIF, 0, NULL);

    FUNC10( name, "\\BaseNamedObjects\\Session\\%u", FUNC3()->Peb->SessionId );
    FUNC8(&str, name );
    status = FUNC7(&dir, DIRECTORY_QUERY, &attr);
    FUNC9(&str);
    if (!status && FUNC4( dir, objname )) goto done;
    if (!status) FUNC6( dir );

    FUNC8(&str, "\\BaseNamedObjects");
    status = FUNC7(&dir, DIRECTORY_QUERY, &attr);
    FUNC9(&str);
    if (!status && FUNC4( dir, objname )) goto done;
    if (!status) FUNC6( dir );

    dir = 0;

done:
    FUNC6( h );
    return dir;
}