#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ i_entries_count; int /*<<< orphan*/  psz_dialog_password; int /*<<< orphan*/  psz_dialog_username; int /*<<< orphan*/  psz_var_password; int /*<<< orphan*/  psz_var_username; int /*<<< orphan*/  psz_split_domain; scalar_t__ p_keystore; int /*<<< orphan*/  p_entries; } ;
typedef  TYPE_1__ vlc_credential ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC3(vlc_credential *p_credential)
{
    if (p_credential->i_entries_count > 0)
        FUNC2(p_credential->p_entries,
                                     p_credential->i_entries_count);
    if (p_credential->p_keystore)
        FUNC1(p_credential->p_keystore);

    FUNC0(p_credential->psz_split_domain);
    FUNC0(p_credential->psz_var_username);
    FUNC0(p_credential->psz_var_password);
    FUNC0(p_credential->psz_dialog_username);
    FUNC0(p_credential->psz_dialog_password);
}