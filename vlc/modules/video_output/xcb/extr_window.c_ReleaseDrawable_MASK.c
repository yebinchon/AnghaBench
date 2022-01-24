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
typedef  scalar_t__ xcb_window_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  serializer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9 (vlc_object_t *obj, xcb_window_t window)
{
    vlc_object_t *vlc = FUNC0(FUNC8(obj));
    xcb_window_t *used;
    size_t n = 0;

    FUNC6 (&serializer);
    used = FUNC4(vlc, "xid-in-use");
    FUNC1 (*used);
    while (used[n] != window)
    {
        FUNC1 (used[n]);
        n++;
    }
    do
        used[n] = used[n + 1];
    while (used[++n]);

    if (!used[0])
        FUNC5(vlc, "xid-in-use", NULL);
    else
        used = NULL;

    FUNC7 (&serializer);

    FUNC2( used );

    /* Variables are reference-counted... */
    FUNC3(vlc, "xid-in-use");
}