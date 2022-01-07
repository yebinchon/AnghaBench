
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_readdir_helper {size_t i_dirs; struct rdh_dir** pp_dirs; } ;
struct rdh_dir {char* psz_path; TYPE_1__* p_node; } ;
typedef int input_item_t ;
struct TYPE_5__ {int p_item; } ;
typedef TYPE_1__ input_item_node_t ;


 int INPUT_DURATION_UNSET ;
 int INPUT_ITEM_URI_NOP ;
 int ITEM_TYPE_DIRECTORY ;
 int TAB_APPEND (size_t,struct rdh_dir**,struct rdh_dir*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 int free (struct rdh_dir*) ;
 int input_item_CopyOptions (int *,int ) ;
 int * input_item_NewExt (int ,char const*,int ,int ,int) ;
 int input_item_Release (int *) ;
 TYPE_1__* input_item_node_AppendItem (TYPE_1__*,int *) ;
 struct rdh_dir* malloc (int) ;
 char* strchr (char const*,char) ;
 int strncmp (char*,char const*,int) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int rdh_unflatten(struct vlc_readdir_helper *p_rdh,
                         input_item_node_t **pp_node, const char *psz_path,
                         int i_net)
{




    assert(psz_path != ((void*)0));
    const char *psz_subpaths = psz_path;

    while ((psz_subpaths = strchr(psz_subpaths, '/')))
    {
        input_item_node_t *p_subnode = ((void*)0);


        for (size_t i = 0; i < p_rdh->i_dirs && p_subnode == ((void*)0); i++)
        {
            struct rdh_dir *rdh_dir = p_rdh->pp_dirs[i];
            if (!strncmp(rdh_dir->psz_path, psz_path, psz_subpaths - psz_path))
                p_subnode = rdh_dir->p_node;
        }


        if (p_subnode == ((void*)0))
        {
            size_t i_sub_path_len = psz_subpaths - psz_path;
            struct rdh_dir *p_rdh_dir =
                malloc(sizeof(struct rdh_dir) + 1 + i_sub_path_len);
            if (p_rdh_dir == ((void*)0))
                return VLC_ENOMEM;
            strncpy(p_rdh_dir->psz_path, psz_path, i_sub_path_len);
            p_rdh_dir->psz_path[i_sub_path_len] = 0;

            const char *psz_subpathname = strrchr(p_rdh_dir->psz_path, '/');
            if (psz_subpathname != ((void*)0))
                ++psz_subpathname;
            else
                psz_subpathname = p_rdh_dir->psz_path;

            input_item_t *p_item =
                input_item_NewExt(INPUT_ITEM_URI_NOP, psz_subpathname, INPUT_DURATION_UNSET,
                                  ITEM_TYPE_DIRECTORY, i_net);
            if (p_item == ((void*)0))
            {
                free(p_rdh_dir);
                return VLC_ENOMEM;
            }
            input_item_CopyOptions(p_item, (*pp_node)->p_item);
            *pp_node = input_item_node_AppendItem(*pp_node, p_item);
            input_item_Release(p_item);
            if (*pp_node == ((void*)0))
            {
                free(p_rdh_dir);
                return VLC_ENOMEM;
            }
            p_rdh_dir->p_node = *pp_node;
            TAB_APPEND(p_rdh->i_dirs, p_rdh->pp_dirs, p_rdh_dir);
        }
        else
            *pp_node = p_subnode;
        psz_subpaths++;
    }
    return VLC_SUCCESS;
}
