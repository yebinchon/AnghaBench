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
struct vlc_readdir_helper {size_t i_slaves; size_t i_dirs; struct rdh_slave** pp_dirs; struct rdh_slave** pp_slaves; struct rdh_slave* psz_ignored_exts; int /*<<< orphan*/  p_node; } ;
struct rdh_slave {struct rdh_slave* psz_filename; int /*<<< orphan*/  p_slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,struct rdh_slave**) ; 
 int /*<<< orphan*/  FUNC1 (struct rdh_slave*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_readdir_helper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct vlc_readdir_helper *p_rdh, bool b_success)
{
    if (b_success)
    {
        FUNC4(p_rdh->p_node);
        FUNC3(p_rdh, p_rdh->p_node);
    }
    FUNC1(p_rdh->psz_ignored_exts);

    /* Remove unmatched slaves */
    for (size_t i = 0; i < p_rdh->i_slaves; i++)
    {
        struct rdh_slave *p_rdh_slave = p_rdh->pp_slaves[i];
        if (p_rdh_slave != NULL)
        {
            FUNC2(p_rdh_slave->p_slave);
            FUNC1(p_rdh_slave->psz_filename);
            FUNC1(p_rdh_slave);
        }
    }
    FUNC0(p_rdh->i_slaves, p_rdh->pp_slaves);

    for (size_t i = 0; i < p_rdh->i_dirs; i++)
        FUNC1(p_rdh->pp_dirs[i]);
    FUNC0(p_rdh->i_dirs, p_rdh->pp_dirs);
}