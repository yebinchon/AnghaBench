
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_dictionary_t ;
struct TYPE_7__ {scalar_t__ p_rootnode; } ;
typedef TYPE_1__ ttml_context_t ;
struct TYPE_8__ {int attr_dict; int psz_node_name; TYPE_3__* p_child; } ;
typedef TYPE_2__ tt_node_t ;
struct TYPE_9__ {scalar_t__ i_type; struct TYPE_9__* p_next; } ;
typedef TYPE_3__ tt_basenode_t ;


 int DictMergeWithStyleID (TYPE_1__*,char const*,int *) ;
 int DictionaryMerge (int *,int *,int) ;
 TYPE_2__* FindNode (scalar_t__,char*,int,char const*) ;
 scalar_t__ TT_NODE_TYPE_TEXT ;
 int assert (scalar_t__) ;
 int tt_node_NameCompare (int ,char*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_dictionary_value_for_key (int *,char*) ;

__attribute__((used)) static void DictMergeWithRegionID( ttml_context_t *p_ctx, const char *psz_id,
                                   vlc_dictionary_t *p_dst )
{
    assert(p_ctx->p_rootnode);
    if( psz_id && p_ctx->p_rootnode )
    {
        const tt_node_t *p_regionnode = FindNode( p_ctx->p_rootnode,
                                                 "region", -1, psz_id );
        if( !p_regionnode )
            return;

        DictionaryMerge( &p_regionnode->attr_dict, p_dst, 0 );

        const char *psz_styleid = (const char *)
                vlc_dictionary_value_for_key( &p_regionnode->attr_dict, "style" );
        if( psz_styleid )
            DictMergeWithStyleID( p_ctx, psz_styleid, p_dst );

        for( const tt_basenode_t *p_child = p_regionnode->p_child;
                                  p_child; p_child = p_child->p_next )
        {
            if( unlikely( p_child->i_type == TT_NODE_TYPE_TEXT ) )
                continue;

            const tt_node_t *p_node = (const tt_node_t *) p_child;
            if( !tt_node_NameCompare( p_node->psz_node_name, "style" ) )
            {
                DictionaryMerge( &p_node->attr_dict, p_dst, 0 );
            }
        }
    }
}
