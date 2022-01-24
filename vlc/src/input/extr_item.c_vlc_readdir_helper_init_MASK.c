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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_readdir_helper {int /*<<< orphan*/  pp_dirs; int /*<<< orphan*/  i_dirs; int /*<<< orphan*/  pp_slaves; int /*<<< orphan*/  i_slaves; void* b_flatten; int /*<<< orphan*/  i_sub_autodetect_fuzzy; int /*<<< orphan*/  psz_ignored_exts; void* b_show_hiddenfiles; TYPE_1__* p_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_item; } ;
typedef  TYPE_1__ input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct vlc_readdir_helper *p_rdh,
                             vlc_object_t *p_obj, input_item_node_t *p_node)
{
    /* Read options from the parent item. This allows vlc_stream_ReadDir()
     * users to specify options without affecting any exisitng vlc_object_t.
     * Apply options on a temporary object in order to not apply options (which
     * can be insecure) to the current object. */
    vlc_object_t *p_var_obj = FUNC5(p_obj, sizeof(vlc_object_t));
    if (p_var_obj != NULL)
    {
        FUNC1(p_var_obj, p_node->p_item);
        p_obj = p_var_obj;
    }

    p_rdh->p_node = p_node;
    p_rdh->b_show_hiddenfiles = FUNC2(p_obj, "show-hiddenfiles");
    p_rdh->psz_ignored_exts = FUNC4(p_obj, "ignore-filetypes");
    bool b_autodetect = FUNC2(p_obj, "sub-autodetect-file");
    p_rdh->i_sub_autodetect_fuzzy = !b_autodetect ? 0 :
        FUNC3(p_obj, "sub-autodetect-fuzzy");
    p_rdh->b_flatten = FUNC2(p_obj, "extractor-flatten");
    FUNC0(p_rdh->i_slaves, p_rdh->pp_slaves);
    FUNC0(p_rdh->i_dirs, p_rdh->pp_dirs);

    if (p_var_obj != NULL)
        FUNC6(p_var_obj);
}