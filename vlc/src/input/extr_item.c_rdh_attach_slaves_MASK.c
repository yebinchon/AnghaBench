#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct vlc_readdir_helper {scalar_t__ i_sub_autodetect_fuzzy; size_t i_slaves; struct rdh_slave** pp_slaves; } ;
struct rdh_slave {TYPE_4__* p_slave; TYPE_2__* p_node; int /*<<< orphan*/  psz_filename; } ;
struct TYPE_10__ {int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_1__ input_item_t ;
typedef  int /*<<< orphan*/  input_item_slave_t ;
struct TYPE_11__ {int i_children; struct TYPE_11__** pp_children; TYPE_1__* p_item; } ;
typedef  TYPE_2__ input_item_node_t ;
typedef  enum slave_type { ____Placeholder_slave_type } slave_type ;
struct TYPE_12__ {scalar_t__ i_priority; scalar_t__ i_type; int /*<<< orphan*/  psz_uri; } ;

/* Variables and functions */
 scalar_t__ SLAVE_PRIORITY_MATCH_ALL ; 
 scalar_t__ SLAVE_TYPE_SPU ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vlc_readdir_helper*,struct rdh_slave*) ; 

__attribute__((used)) static void FUNC9(struct vlc_readdir_helper *p_rdh,
                              input_item_node_t *p_parent_node)
{
    if (p_rdh->i_sub_autodetect_fuzzy == 0)
        return;

    /* Try to match slaves for each items of the node */
    for (int i = 0; i < p_parent_node->i_children; i++)
    {
        input_item_node_t *p_node = p_parent_node->pp_children[i];
        input_item_t *p_item = p_node->p_item;

        enum slave_type unused;
        if (!FUNC1(p_item->psz_name)
         || FUNC5(p_item->psz_name, &unused))
            continue; /* don't match 2 possible slaves between each others */

        for (size_t j = 0; j < p_rdh->i_slaves; j++)
        {
            struct rdh_slave *p_rdh_slave = p_rdh->pp_slaves[j];

            /* Don't try to match slaves with themselves or slaves already
             * attached with the higher priority */
            if (p_rdh_slave->p_node == p_node
             || p_rdh_slave->p_slave->i_priority == SLAVE_PRIORITY_MATCH_ALL)
                continue;

            uint8_t i_priority =
                FUNC7(p_item, p_rdh_slave->p_slave,
                                         p_rdh_slave->psz_filename);

            if (i_priority < p_rdh->i_sub_autodetect_fuzzy)
                continue;

            /* Drop the ".sub" slave if a ".idx" slave matches */
            if (p_rdh_slave->p_slave->i_type == SLAVE_TYPE_SPU
             && FUNC8(p_rdh, p_rdh_slave))
                continue;

            input_item_slave_t *p_slave =
                FUNC6(p_rdh_slave->p_slave->psz_uri,
                                     p_rdh_slave->p_slave->i_type,
                                     i_priority);
            if (p_slave == NULL)
                break;

            if (FUNC0(p_item, p_slave) != VLC_SUCCESS)
            {
                FUNC4(p_slave);
                break;
            }

            /* Remove the corresponding node if any: This slave won't be
             * added in the parent node */
            if (p_rdh_slave->p_node != NULL)
            {
                FUNC3(p_parent_node, p_rdh_slave->p_node);
                FUNC2(p_rdh_slave->p_node);
                p_rdh_slave->p_node = NULL;
            }

            p_rdh_slave->p_slave->i_priority = i_priority;
        }
    }

    /* Attach all children */
    for (int i = 0; i < p_parent_node->i_children; i++)
        FUNC9(p_rdh, p_parent_node->pp_children[i]);
}