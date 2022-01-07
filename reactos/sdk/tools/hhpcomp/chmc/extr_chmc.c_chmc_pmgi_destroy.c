
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcPmgiChunkNode {int dummy; } ;


 int assert (struct chmcPmgiChunkNode*) ;
 int free (struct chmcPmgiChunkNode*) ;

void chmc_pmgi_destroy(struct chmcPmgiChunkNode *node)
{
 assert(node);
 free(node);
}
