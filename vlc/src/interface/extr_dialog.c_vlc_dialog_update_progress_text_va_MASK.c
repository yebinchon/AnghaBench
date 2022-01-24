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
typedef  int /*<<< orphan*/  vlc_dialog_id ;
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,char*) ; 
 int FUNC2 (char**,char const*,int /*<<< orphan*/ ) ; 

int
FUNC3(vlc_object_t *p_obj, vlc_dialog_id *p_id,
                                   float f_value, const char *psz_fmt,
                                   va_list ap)
{
    FUNC0(psz_fmt != NULL);

    char *psz_text;
    if (FUNC2(&psz_text, psz_fmt, ap) == -1)
        return VLC_ENOMEM;
    return FUNC1(p_obj, p_id, f_value, psz_text);
}