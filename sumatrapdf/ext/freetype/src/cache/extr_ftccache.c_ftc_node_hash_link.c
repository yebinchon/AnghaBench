
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int slack; } ;
struct TYPE_8__ {struct TYPE_8__* link; int hash; } ;
typedef TYPE_1__* FTC_Node ;
typedef TYPE_2__* FTC_Cache ;


 TYPE_1__** FTC_NODE_TOP_FOR_HASH (TYPE_2__*,int ) ;
 int ftc_cache_resize (TYPE_2__*) ;

__attribute__((used)) static void
  ftc_node_hash_link( FTC_Node node,
                      FTC_Cache cache )
  {
    FTC_Node *pnode = FTC_NODE_TOP_FOR_HASH( cache, node->hash );


    node->link = *pnode;
    *pnode = node;

    cache->slack--;
    ftc_cache_resize( cache );
  }
