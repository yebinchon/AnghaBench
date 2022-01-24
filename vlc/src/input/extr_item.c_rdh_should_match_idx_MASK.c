#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {size_t i_slaves; struct rdh_slave** pp_slaves; } ;
struct rdh_slave {int /*<<< orphan*/  psz_filename; TYPE_1__* p_slave; } ;
struct TYPE_2__ {scalar_t__ i_priority; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC4(struct vlc_readdir_helper *p_rdh,
                                struct rdh_slave *p_rdh_sub)
{
    char *psz_ext = FUNC3(p_rdh_sub->psz_filename, '.');
    if (!psz_ext)
        return false;
    psz_ext++;

    if (FUNC0(psz_ext, "sub") != 0)
        return false;

    for (size_t i = 0; i < p_rdh->i_slaves; i++)
    {
        struct rdh_slave *p_rdh_slave = p_rdh->pp_slaves[i];

        if (p_rdh_slave == NULL || p_rdh_slave == p_rdh_sub)
            continue;

        /* check that priorities match */
        if (p_rdh_slave->p_slave->i_priority !=
            p_rdh_sub->p_slave->i_priority)
            continue;

        /* check that the filenames without extension match */
        if (FUNC2(p_rdh_sub->psz_filename, p_rdh_slave->psz_filename,
                        FUNC1(p_rdh_sub->psz_filename) - 3 ) != 0)
            continue;

        /* check that we have an idx file */
        char *psz_ext_idx = FUNC3(p_rdh_slave->psz_filename, '.');
        if (psz_ext_idx == NULL)
            continue;
        psz_ext_idx++;
        if (FUNC0(psz_ext_idx, "idx" ) == 0)
            return true;
    }
    return false;
}