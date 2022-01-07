
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_meta_t ;
struct TYPE_8__ {int b_net; scalar_t__ i_slaves; int * p_meta; int lock; TYPE_7__** pp_slaves; int i_type; int i_duration; int psz_name; int psz_uri; } ;
typedef TYPE_1__ input_item_t ;
typedef int input_item_slave_t ;
struct TYPE_9__ {int i_priority; int i_type; int psz_uri; } ;


 int ITEM_NET_UNKNOWN ;
 int TAB_APPEND (int,TYPE_7__**,int *) ;
 int input_item_CopyOptions (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* input_item_NewExt (int ,int ,int ,int ,int ) ;
 int * input_item_slave_New (int ,int ,int ) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int ) ;
 int vlc_meta_Merge (int *,int *) ;
 int * vlc_meta_New () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

input_item_t *input_item_Copy( input_item_t *p_input )
{
    vlc_meta_t *meta = ((void*)0);
    input_item_t *item;
    bool b_net;

    vlc_mutex_lock( &p_input->lock );

    item = input_item_NewExt( p_input->psz_uri, p_input->psz_name,
                              p_input->i_duration, p_input->i_type,
                              ITEM_NET_UNKNOWN );
    if( likely(item != ((void*)0)) && p_input->p_meta != ((void*)0) )
    {
        meta = vlc_meta_New();
        vlc_meta_Merge( meta, p_input->p_meta );
    }
    b_net = p_input->b_net;

    if( likely(item != ((void*)0)) && p_input->i_slaves > 0 )
    {
        for( int i = 0; i < p_input->i_slaves; i++ )
        {
            input_item_slave_t* slave = input_item_slave_New(
                        p_input->pp_slaves[i]->psz_uri,
                        p_input->pp_slaves[i]->i_type,
                        p_input->pp_slaves[i]->i_priority);
            if( unlikely(slave != ((void*)0)) )
            {
                TAB_APPEND(item->i_slaves, item->pp_slaves, slave);
            }
        }
    }

    vlc_mutex_unlock( &p_input->lock );

    if( likely(item != ((void*)0)) )
    {
        input_item_CopyOptions( item, p_input );
        item->p_meta = meta;
        item->b_net = b_net;
    }

    return item;
}
