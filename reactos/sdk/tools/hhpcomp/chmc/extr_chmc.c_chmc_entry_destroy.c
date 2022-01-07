
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcTreeNode {int flags; struct chmcTreeNode* buf; struct chmcTreeNode* name; } ;


 int CHMC_TNFL_STATIC ;
 int assert (struct chmcTreeNode*) ;
 int free (struct chmcTreeNode*) ;

void chmc_entry_destroy( struct chmcTreeNode *node )
{
 assert(node);
 assert(node->name);

 free(node->name);
 if (node->buf && !(node->flags & CHMC_TNFL_STATIC))
  free(node->buf);
 free(node);
}
