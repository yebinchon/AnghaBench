#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* pf_display_login ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char*,char const*,int) ;int /*<<< orphan*/ * pf_cancel; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_cbs_data; TYPE_1__ cbs; } ;
typedef  TYPE_2__ vlc_dialog_provider ;
typedef  int /*<<< orphan*/  vlc_dialog_id ;
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_DIALOG_LOGIN ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char*,char const*,int) ; 
 int FUNC3 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(vlc_dialog_provider *p_provider, vlc_dialog_id **pp_id,
                        const char *psz_default_username, bool b_ask_store,
                        const char *psz_title, const char *psz_fmt, va_list ap)
{
    FUNC4(&p_provider->lock);
    if (p_provider->cbs.pf_display_login == NULL
     || p_provider->cbs.pf_cancel == NULL)
    {
        FUNC5(&p_provider->lock);
        return VLC_EGENERIC;
    }

    char *psz_text;
    if (FUNC3(&psz_text, psz_fmt, ap) == -1)
    {
        FUNC5(&p_provider->lock);
        return VLC_ENOMEM;
    }

    vlc_dialog_id *p_id = FUNC0(p_provider, VLC_DIALOG_LOGIN);
    if (p_id == NULL)
    {
        FUNC1(psz_text);
        FUNC5(&p_provider->lock);
        return VLC_ENOMEM;
    }
    p_provider->cbs.pf_display_login(p_provider->p_cbs_data, p_id, psz_title,
                                     psz_text, psz_default_username, b_ask_store);
    FUNC1(psz_text);
    FUNC5(&p_provider->lock);
    *pp_id = p_id;

    return VLC_SUCCESS;
}