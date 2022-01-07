
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct vlc_readdir_helper {int pp_dirs; int i_dirs; int pp_slaves; int i_slaves; void* b_flatten; int i_sub_autodetect_fuzzy; int psz_ignored_exts; void* b_show_hiddenfiles; TYPE_1__* p_node; } ;
struct TYPE_3__ {int p_item; } ;
typedef TYPE_1__ input_item_node_t ;


 int TAB_INIT (int ,int ) ;
 int input_item_ApplyOptions (int *,int ) ;
 void* var_InheritBool (int *,char*) ;
 int var_InheritInteger (int *,char*) ;
 int var_InheritString (int *,char*) ;
 int * vlc_object_create (int *,int) ;
 int vlc_object_delete (int *) ;

void vlc_readdir_helper_init(struct vlc_readdir_helper *p_rdh,
                             vlc_object_t *p_obj, input_item_node_t *p_node)
{




    vlc_object_t *p_var_obj = vlc_object_create(p_obj, sizeof(vlc_object_t));
    if (p_var_obj != ((void*)0))
    {
        input_item_ApplyOptions(p_var_obj, p_node->p_item);
        p_obj = p_var_obj;
    }

    p_rdh->p_node = p_node;
    p_rdh->b_show_hiddenfiles = var_InheritBool(p_obj, "show-hiddenfiles");
    p_rdh->psz_ignored_exts = var_InheritString(p_obj, "ignore-filetypes");
    bool b_autodetect = var_InheritBool(p_obj, "sub-autodetect-file");
    p_rdh->i_sub_autodetect_fuzzy = !b_autodetect ? 0 :
        var_InheritInteger(p_obj, "sub-autodetect-fuzzy");
    p_rdh->b_flatten = var_InheritBool(p_obj, "extractor-flatten");
    TAB_INIT(p_rdh->i_slaves, p_rdh->pp_slaves);
    TAB_INIT(p_rdh->i_dirs, p_rdh->pp_dirs);

    if (p_var_obj != ((void*)0))
        vlc_object_delete(p_var_obj);
}
