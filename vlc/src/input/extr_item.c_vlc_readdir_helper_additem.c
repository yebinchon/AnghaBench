
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_readdir_helper {scalar_t__ i_sub_autodetect_fuzzy; TYPE_1__* p_node; int pp_slaves; int i_slaves; int b_flatten; } ;
struct rdh_slave {TYPE_1__* p_node; struct rdh_slave* psz_filename; int p_slave; } ;
typedef int input_item_t ;
struct TYPE_5__ {int p_item; } ;
typedef TYPE_1__ input_item_node_t ;
typedef enum slave_type { ____Placeholder_slave_type } slave_type ;


 int INPUT_DURATION_UNSET ;
 int SLAVE_PRIORITY_MATCH_NONE ;
 int TAB_APPEND (int ,int ,struct rdh_slave*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int free (struct rdh_slave*) ;
 int input_item_CopyOptions (int *,int ) ;
 int * input_item_NewExt (char const*,char const*,int ,int,int) ;
 int input_item_Release (int *) ;
 TYPE_1__* input_item_node_AppendItem (TYPE_1__*,int *) ;
 scalar_t__ input_item_slave_GetType (char const*,int*) ;
 int input_item_slave_New (char const*,int,int ) ;
 struct rdh_slave* malloc (int) ;
 scalar_t__ rdh_file_is_ignored (struct vlc_readdir_helper*,char const*) ;
 int rdh_unflatten (struct vlc_readdir_helper*,TYPE_1__**,char const*,int) ;
 struct rdh_slave* strdup (char const*) ;
 char* strrchr (char const*,char) ;

int vlc_readdir_helper_additem(struct vlc_readdir_helper *p_rdh,
                               const char *psz_uri, const char *psz_flatpath,
                               const char *psz_filename, int i_type, int i_net)
{
    enum slave_type i_slave_type;
    struct rdh_slave *p_rdh_slave = ((void*)0);
    assert(psz_flatpath || psz_filename);

    if (!p_rdh->b_flatten)
    {
        if (psz_filename == ((void*)0))
        {
            psz_filename = strrchr(psz_flatpath, '/');
            if (psz_filename != ((void*)0))
                ++psz_filename;
            else
                psz_filename = psz_flatpath;
        }
    }
    else
    {
        if (psz_filename == ((void*)0))
            psz_filename = psz_flatpath;
        psz_flatpath = ((void*)0);
    }

    if (p_rdh->i_sub_autodetect_fuzzy != 0
     && input_item_slave_GetType(psz_filename, &i_slave_type))
    {
        p_rdh_slave = malloc(sizeof(*p_rdh_slave));
        if (!p_rdh_slave)
            return VLC_ENOMEM;

        p_rdh_slave->p_node = ((void*)0);
        p_rdh_slave->psz_filename = strdup(psz_filename);
        p_rdh_slave->p_slave = input_item_slave_New(psz_uri, i_slave_type,
                                                      SLAVE_PRIORITY_MATCH_NONE);
        if (!p_rdh_slave->p_slave || !p_rdh_slave->psz_filename)
        {
            free(p_rdh_slave->psz_filename);
            free(p_rdh_slave);
            return VLC_ENOMEM;
        }

        TAB_APPEND(p_rdh->i_slaves, p_rdh->pp_slaves, p_rdh_slave);
    }

    if (rdh_file_is_ignored(p_rdh, psz_filename))
        return VLC_SUCCESS;

    input_item_node_t *p_node = p_rdh->p_node;

    if (psz_flatpath != ((void*)0))
    {
        int i_ret = rdh_unflatten(p_rdh, &p_node, psz_flatpath, i_net);
        if (i_ret != VLC_SUCCESS)
            return i_ret;
    }

    input_item_t *p_item = input_item_NewExt(psz_uri, psz_filename, INPUT_DURATION_UNSET, i_type,
                                             i_net);
    if (p_item == ((void*)0))
        return VLC_ENOMEM;

    input_item_CopyOptions(p_item, p_node->p_item);
    p_node = input_item_node_AppendItem(p_node, p_item);
    input_item_Release(p_item);
    if (p_node == ((void*)0))
        return VLC_ENOMEM;




    if (p_rdh_slave != ((void*)0))
        p_rdh_slave->p_node = p_node;
    return VLC_SUCCESS;
}
