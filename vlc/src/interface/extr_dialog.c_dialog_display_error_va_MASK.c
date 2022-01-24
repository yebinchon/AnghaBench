#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* pf_display_error ) (int /*<<< orphan*/ ,char const*,char*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_cbs_data; TYPE_1__ cbs; } ;
typedef  TYPE_2__ vlc_dialog_provider ;
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC2 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(vlc_dialog_provider *p_provider, const char *psz_title,
                        const char *psz_fmt, va_list ap)
{
    FUNC3(&p_provider->lock);
    if (p_provider->cbs.pf_display_error == NULL)
    {
        FUNC4(&p_provider->lock);
        return VLC_EGENERIC;
    }

    char *psz_text;
    if (FUNC2(&psz_text, psz_fmt, ap) == -1)
    {
        FUNC4(&p_provider->lock);
        return VLC_ENOMEM;
    }

    p_provider->cbs.pf_display_error(p_provider->p_cbs_data, psz_title, psz_text);
    FUNC0(psz_text);
    FUNC4(&p_provider->lock);

    return VLC_SUCCESS;
}