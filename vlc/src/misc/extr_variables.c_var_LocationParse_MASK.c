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
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char const*,char const*) ; 
 size_t FUNC5 (char const*,char*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

int (FUNC9)(vlc_object_t *obj, const char *mrl, const char *pref)
{
    int ret = VLC_SUCCESS;
    size_t preflen = FUNC6 (pref) + 1;

    FUNC0(mrl != NULL);
    while (*mrl != '\0')
    {
        mrl += FUNC7 (mrl, ":;"); /* skip leading colon(s) */

        size_t len = FUNC5 (mrl, ":;");
        char *buf = FUNC3 (preflen + len);

        if (FUNC2(buf != NULL))
        {
            /* NOTE: this does not support the "no-<varname>" bool syntax. */
            /* DO NOT use asprintf() here; it won't work! Think again. */
            FUNC4 (buf, preflen + len, "%s%s", pref, mrl);
            FUNC8 (obj, buf, false);
            FUNC1 (buf);
        }
        else
            ret = VLC_ENOMEM;
        mrl += len;
    }

    return ret;
}