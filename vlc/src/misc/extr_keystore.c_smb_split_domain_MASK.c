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
struct TYPE_3__ {char* psz_username; int /*<<< orphan*/  psz_split_domain; int /*<<< orphan*/  psz_realm; } ;
typedef  TYPE_1__ vlc_credential ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 

__attribute__((used)) static void
FUNC3(vlc_credential *p_credential)
{
    char *psz_delim = FUNC1(p_credential->psz_username, ';');
    if (psz_delim)
    {
        size_t i_len = psz_delim - p_credential->psz_username;
        if (i_len > 0)
        {
            FUNC0(p_credential->psz_split_domain);
            p_credential->psz_split_domain =
                FUNC2(p_credential->psz_username, i_len);
            p_credential->psz_realm = p_credential->psz_split_domain;
        }
        p_credential->psz_username = psz_delim + 1;
    }
}