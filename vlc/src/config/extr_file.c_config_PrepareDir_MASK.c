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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_CONFIG_DIR ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3 (vlc_object_t *obj)
{
    char *psz_configdir = FUNC1 (VLC_CONFIG_DIR);
    if (psz_configdir == NULL)
        return -1;

    int ret = FUNC0 (obj, psz_configdir);
    FUNC2 (psz_configdir);
    return ret;
}