#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {scalar_t__ i_sub_autodetect_fuzzy; TYPE_1__* p_node; int /*<<< orphan*/  pp_slaves; int /*<<< orphan*/  i_slaves; int /*<<< orphan*/  b_flatten; } ;
struct rdh_slave {TYPE_1__* p_node; struct rdh_slave* psz_filename; int /*<<< orphan*/  p_slave; } ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_item; } ;
typedef  TYPE_1__ input_item_node_t ;
typedef  enum slave_type { ____Placeholder_slave_type } slave_type ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_DURATION_UNSET ; 
 int /*<<< orphan*/  SLAVE_PRIORITY_MATCH_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdh_slave*) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rdh_slave*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int,int /*<<< orphan*/ ) ; 
 struct rdh_slave* FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct vlc_readdir_helper*,char const*) ; 
 int FUNC11 (struct vlc_readdir_helper*,TYPE_1__**,char const*,int) ; 
 struct rdh_slave* FUNC12 (char const*) ; 
 char* FUNC13 (char const*,char) ; 

int FUNC14(struct vlc_readdir_helper *p_rdh,
                               const char *psz_uri, const char *psz_flatpath,
                               const char *psz_filename, int i_type, int i_net)
{
    enum slave_type i_slave_type;
    struct rdh_slave *p_rdh_slave = NULL;
    FUNC1(psz_flatpath || psz_filename);

    if (!p_rdh->b_flatten)
    {
        if (psz_filename == NULL)
        {
            psz_filename = FUNC13(psz_flatpath, '/');
            if (psz_filename != NULL)
                ++psz_filename;
            else
                psz_filename = psz_flatpath;
        }
    }
    else
    {
        if (psz_filename == NULL)
            psz_filename = psz_flatpath;
        psz_flatpath = NULL;
    }

    if (p_rdh->i_sub_autodetect_fuzzy != 0
     && FUNC7(psz_filename, &i_slave_type))
    {
        p_rdh_slave = FUNC9(sizeof(*p_rdh_slave));
        if (!p_rdh_slave)
            return VLC_ENOMEM;

        p_rdh_slave->p_node = NULL;
        p_rdh_slave->psz_filename = FUNC12(psz_filename);
        p_rdh_slave->p_slave = FUNC8(psz_uri, i_slave_type,
                                                      SLAVE_PRIORITY_MATCH_NONE);
        if (!p_rdh_slave->p_slave || !p_rdh_slave->psz_filename)
        {
            FUNC2(p_rdh_slave->psz_filename);
            FUNC2(p_rdh_slave);
            return VLC_ENOMEM;
        }

        FUNC0(p_rdh->i_slaves, p_rdh->pp_slaves, p_rdh_slave);
    }

    if (FUNC10(p_rdh, psz_filename))
        return VLC_SUCCESS;

    input_item_node_t *p_node = p_rdh->p_node;

    if (psz_flatpath != NULL)
    {
        int i_ret = FUNC11(p_rdh, &p_node, psz_flatpath, i_net);
        if (i_ret != VLC_SUCCESS)
            return i_ret;
    }

    input_item_t *p_item = FUNC4(psz_uri, psz_filename, INPUT_DURATION_UNSET, i_type,
                                             i_net);
    if (p_item == NULL)
        return VLC_ENOMEM;

    FUNC3(p_item, p_node->p_item);
    p_node = FUNC6(p_node, p_item);
    FUNC5(p_item);
    if (p_node == NULL)
        return VLC_ENOMEM;

    /* A slave can also be an item. If there is a match, this item will be
     * removed from the parent node. This is not a common case, since most
     * slaves will be ignored by rdh_file_is_ignored() */
    if (p_rdh_slave != NULL)
        p_rdh_slave->p_node = p_node;
    return VLC_SUCCESS;
}