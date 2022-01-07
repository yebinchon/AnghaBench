
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcPmglChunkNode {int dummy; } ;


 int assert (struct chmcPmglChunkNode*) ;
 int free (struct chmcPmglChunkNode*) ;

void chmc_pmgl_destroy(struct chmcPmglChunkNode *node)
{
 assert(node);
 free(node);
}
