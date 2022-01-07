
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcPmgiChunkNode {int dummy; } ;


 int chmc_pmgi_init (struct chmcPmgiChunkNode*) ;
 struct chmcPmgiChunkNode* malloc (int) ;

struct chmcPmgiChunkNode *chmc_pmgi_create(void)
{
 struct chmcPmgiChunkNode *node;

 node = malloc(sizeof(struct chmcPmgiChunkNode));
 if (node)
  chmc_pmgi_init(node);

 return node;
}
