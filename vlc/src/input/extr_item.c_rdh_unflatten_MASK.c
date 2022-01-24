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
struct vlc_readdir_helper {size_t i_dirs; struct rdh_dir** pp_dirs; } ;
struct rdh_dir {char* psz_path; TYPE_1__* p_node; } ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_item; } ;
typedef  TYPE_1__ input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_DURATION_UNSET ; 
 int /*<<< orphan*/  INPUT_ITEM_URI_NOP ; 
 int /*<<< orphan*/  ITEM_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (size_t,struct rdh_dir**,struct rdh_dir*) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdh_dir*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct rdh_dir* FUNC7 (int) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 
 char* FUNC11 (char*,char) ; 

__attribute__((used)) static int FUNC12(struct vlc_readdir_helper *p_rdh,
                         input_item_node_t **pp_node, const char *psz_path,
                         int i_net)
{
    /* Create an input input for each sub folders that is contained in the full
     * path. Update pp_node to point to the direct parent of the future item to
     * add. */

    FUNC1(psz_path != NULL);
    const char *psz_subpaths = psz_path;

    while ((psz_subpaths = FUNC8(psz_subpaths, '/')))
    {
        input_item_node_t *p_subnode = NULL;

        /* Check if this sub folder item was already added */
        for (size_t i = 0; i < p_rdh->i_dirs && p_subnode == NULL; i++)
        {
            struct rdh_dir *rdh_dir = p_rdh->pp_dirs[i];
            if (!FUNC9(rdh_dir->psz_path, psz_path, psz_subpaths - psz_path))
                p_subnode = rdh_dir->p_node;
        }

        /* The sub folder item doesn't exist, so create it */
        if (p_subnode == NULL)
        {
            size_t i_sub_path_len = psz_subpaths - psz_path;
            struct rdh_dir *p_rdh_dir =
                FUNC7(sizeof(struct rdh_dir) + 1 + i_sub_path_len);
            if (p_rdh_dir == NULL)
                return VLC_ENOMEM;
            FUNC10(p_rdh_dir->psz_path, psz_path, i_sub_path_len);
            p_rdh_dir->psz_path[i_sub_path_len] = 0;

            const char *psz_subpathname = FUNC11(p_rdh_dir->psz_path, '/');
            if (psz_subpathname != NULL)
                ++psz_subpathname;
            else
                psz_subpathname = p_rdh_dir->psz_path;

            input_item_t *p_item =
                FUNC4(INPUT_ITEM_URI_NOP, psz_subpathname, INPUT_DURATION_UNSET,
                                  ITEM_TYPE_DIRECTORY, i_net);
            if (p_item == NULL)
            {
                FUNC2(p_rdh_dir);
                return VLC_ENOMEM;
            }
            FUNC3(p_item, (*pp_node)->p_item);
            *pp_node = FUNC6(*pp_node, p_item);
            FUNC5(p_item);
            if (*pp_node == NULL)
            {
                FUNC2(p_rdh_dir);
                return VLC_ENOMEM;
            }
            p_rdh_dir->p_node = *pp_node;
            FUNC0(p_rdh->i_dirs, p_rdh->pp_dirs, p_rdh_dir);
        }
        else
            *pp_node = p_subnode;
        psz_subpaths++;
    }
    return VLC_SUCCESS;
}