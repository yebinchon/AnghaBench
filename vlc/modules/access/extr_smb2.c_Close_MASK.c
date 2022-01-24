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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct access_sys {int /*<<< orphan*/  encoded_url; int /*<<< orphan*/  smb2; int /*<<< orphan*/ * share_enum; int /*<<< orphan*/ * smb2dir; int /*<<< orphan*/ * smb2fh; } ;
struct TYPE_4__ {struct access_sys* p_sys; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(vlc_object_t *p_obj)
{
    stream_t *access = (stream_t *)p_obj;
    struct access_sys *sys = access->p_sys;

    if (sys->smb2fh != NULL)
        FUNC5(access);
    else if (sys->smb2dir != NULL)
        FUNC0(sys->smb2, sys->smb2dir);
    else if (sys->share_enum != NULL)
        FUNC2(sys->smb2, sys->share_enum);
    else
        FUNC4();

    FUNC6(access);
    FUNC1(sys->smb2);

    FUNC3(&sys->encoded_url);
}