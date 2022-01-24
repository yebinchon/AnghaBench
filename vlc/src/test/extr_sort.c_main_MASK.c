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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_filenamecmp ; 

int FUNC2 (void)
{
    FUNC1("", "a", vlc_filenamecmp);
    FUNC1("a", "b", vlc_filenamecmp);
    FUNC1("foo1.ogg", "foo2.ogg", vlc_filenamecmp);
    FUNC1("foo2.ogg", "foo10.ogg", vlc_filenamecmp);
    FUNC1("foo1.ogg", "foo10.ogg", vlc_filenamecmp);
    FUNC1("foo01.ogg", "foo1.ogg", vlc_filenamecmp);
    FUNC0("", vlc_filenamecmp);
    FUNC0("a", vlc_filenamecmp);
    FUNC0("123", vlc_filenamecmp);
    return 0;
}