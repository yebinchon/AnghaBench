
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * const node; } ;
typedef TYPE_1__ xmlParserNodeInfo ;
typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int * xmlNodePtr ;
struct TYPE_8__ {unsigned long length; TYPE_1__ const* buffer; } ;
struct TYPE_7__ {TYPE_3__ node_seq; } ;


 unsigned long xmlParserFindNodeInfoIndex (TYPE_3__*,int * const) ;

const xmlParserNodeInfo *
xmlParserFindNodeInfo(const xmlParserCtxtPtr ctx, const xmlNodePtr node)
{
    unsigned long pos;

    if ((ctx == ((void*)0)) || (node == ((void*)0)))
        return (((void*)0));

    pos = xmlParserFindNodeInfoIndex(&ctx->node_seq, node);
    if (pos < ctx->node_seq.length
        && ctx->node_seq.buffer[pos].node == node)
        return &ctx->node_seq.buffer[pos];
    else
        return ((void*)0);
}
