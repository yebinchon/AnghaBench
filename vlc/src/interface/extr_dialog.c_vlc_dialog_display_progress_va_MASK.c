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
typedef  int /*<<< orphan*/  vlc_dialog_provider ;
typedef  int /*<<< orphan*/  vlc_dialog_id ;
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,float,char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

vlc_dialog_id *
FUNC3(vlc_object_t *p_obj, bool b_indeterminate,
                               float f_position, const char *psz_cancel,
                               const char *psz_title, const char *psz_fmt,
                               va_list ap)
{
    FUNC0(p_obj != NULL && psz_title != NULL && psz_fmt != NULL);

    vlc_dialog_provider *p_provider = FUNC2(p_obj, true);
    if (p_provider == NULL)
        return NULL;
    vlc_dialog_id *p_id;
    int i_ret = FUNC1(p_provider, &p_id, b_indeterminate,
                                    f_position, psz_cancel, psz_title, psz_fmt,
                                    ap);
    return i_ret == VLC_SUCCESS ? p_id : NULL;
}