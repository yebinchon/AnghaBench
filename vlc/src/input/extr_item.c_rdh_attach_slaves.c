
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct vlc_readdir_helper {scalar_t__ i_sub_autodetect_fuzzy; size_t i_slaves; struct rdh_slave** pp_slaves; } ;
struct rdh_slave {TYPE_4__* p_slave; TYPE_2__* p_node; int psz_filename; } ;
struct TYPE_10__ {int psz_name; } ;
typedef TYPE_1__ input_item_t ;
typedef int input_item_slave_t ;
struct TYPE_11__ {int i_children; struct TYPE_11__** pp_children; TYPE_1__* p_item; } ;
typedef TYPE_2__ input_item_node_t ;
typedef enum slave_type { ____Placeholder_slave_type } slave_type ;
struct TYPE_12__ {scalar_t__ i_priority; scalar_t__ i_type; int psz_uri; } ;


 scalar_t__ SLAVE_PRIORITY_MATCH_ALL ;
 scalar_t__ SLAVE_TYPE_SPU ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ input_item_AddSlave (TYPE_1__*,int *) ;
 int input_item_IsMaster (int ) ;
 int input_item_node_Delete (TYPE_2__*) ;
 int input_item_node_RemoveNode (TYPE_2__*,TYPE_2__*) ;
 int input_item_slave_Delete (int *) ;
 scalar_t__ input_item_slave_GetType (int ,int*) ;
 int * input_item_slave_New (int ,scalar_t__,scalar_t__) ;
 scalar_t__ rdh_get_slave_priority (TYPE_1__*,TYPE_4__*,int ) ;
 scalar_t__ rdh_should_match_idx (struct vlc_readdir_helper*,struct rdh_slave*) ;

__attribute__((used)) static void rdh_attach_slaves(struct vlc_readdir_helper *p_rdh,
                              input_item_node_t *p_parent_node)
{
    if (p_rdh->i_sub_autodetect_fuzzy == 0)
        return;


    for (int i = 0; i < p_parent_node->i_children; i++)
    {
        input_item_node_t *p_node = p_parent_node->pp_children[i];
        input_item_t *p_item = p_node->p_item;

        enum slave_type unused;
        if (!input_item_IsMaster(p_item->psz_name)
         || input_item_slave_GetType(p_item->psz_name, &unused))
            continue;

        for (size_t j = 0; j < p_rdh->i_slaves; j++)
        {
            struct rdh_slave *p_rdh_slave = p_rdh->pp_slaves[j];



            if (p_rdh_slave->p_node == p_node
             || p_rdh_slave->p_slave->i_priority == SLAVE_PRIORITY_MATCH_ALL)
                continue;

            uint8_t i_priority =
                rdh_get_slave_priority(p_item, p_rdh_slave->p_slave,
                                         p_rdh_slave->psz_filename);

            if (i_priority < p_rdh->i_sub_autodetect_fuzzy)
                continue;


            if (p_rdh_slave->p_slave->i_type == SLAVE_TYPE_SPU
             && rdh_should_match_idx(p_rdh, p_rdh_slave))
                continue;

            input_item_slave_t *p_slave =
                input_item_slave_New(p_rdh_slave->p_slave->psz_uri,
                                     p_rdh_slave->p_slave->i_type,
                                     i_priority);
            if (p_slave == ((void*)0))
                break;

            if (input_item_AddSlave(p_item, p_slave) != VLC_SUCCESS)
            {
                input_item_slave_Delete(p_slave);
                break;
            }



            if (p_rdh_slave->p_node != ((void*)0))
            {
                input_item_node_RemoveNode(p_parent_node, p_rdh_slave->p_node);
                input_item_node_Delete(p_rdh_slave->p_node);
                p_rdh_slave->p_node = ((void*)0);
            }

            p_rdh_slave->p_slave->i_priority = i_priority;
        }
    }


    for (int i = 0; i < p_parent_node->i_children; i++)
        rdh_attach_slaves(p_rdh, p_parent_node->pp_children[i]);
}
