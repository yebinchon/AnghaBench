
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_rootnode; } ;
typedef TYPE_1__ ttml_context_t ;
struct TYPE_9__ {char* psz_text; } ;
typedef TYPE_2__ tt_textnode_t ;
struct TYPE_10__ {TYPE_4__* p_child; int psz_node_name; } ;
typedef TYPE_3__ tt_node_t ;
struct TYPE_11__ {scalar_t__ i_type; struct TYPE_11__* p_next; } ;
typedef TYPE_4__ tt_basenode_t ;


 TYPE_3__* FindNode (TYPE_3__*,char*,int,char const*) ;
 scalar_t__ TT_NODE_TYPE_TEXT ;
 scalar_t__ isspace (char const) ;
 scalar_t__ tt_node_NameCompare (int ,char*) ;

__attribute__((used)) static const char * GetSMPTEImage( ttml_context_t *p_ctx, const char *psz_id )
{
    if( !p_ctx->p_rootnode )
        return ((void*)0);

    tt_node_t *p_head = FindNode( p_ctx->p_rootnode, "head", 1, ((void*)0) );
    if( !p_head )
        return ((void*)0);

    for( tt_basenode_t *p_child = p_head->p_child;
                        p_child; p_child = p_child->p_next )
    {
        if( p_child->i_type == TT_NODE_TYPE_TEXT )
            continue;

        tt_node_t *p_node = (tt_node_t *) p_child;
        if( tt_node_NameCompare( p_node->psz_node_name, "metadata" ) )
            continue;

        tt_node_t *p_imagenode = FindNode( p_node, "smpte:image", 1, psz_id );
        if( !p_imagenode )
            continue;

        if( !p_imagenode->p_child || p_imagenode->p_child->i_type != TT_NODE_TYPE_TEXT )
            return ((void*)0);

        tt_textnode_t *p_textnode = (tt_textnode_t *) p_imagenode->p_child;
        const char *psz_text = p_textnode->psz_text;
        while( isspace( *psz_text ) )
            psz_text++;
        return psz_text;
    }

    return ((void*)0);
}
