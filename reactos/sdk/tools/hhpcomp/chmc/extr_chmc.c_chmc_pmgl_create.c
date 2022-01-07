
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcPmglChunkNode {int dummy; } ;


 int chmc_pmgl_init (struct chmcPmglChunkNode*) ;
 struct chmcPmglChunkNode* malloc (int) ;

struct chmcPmglChunkNode *chmc_pmgl_create(void)
{
 struct chmcPmglChunkNode *node;

 node = malloc(sizeof(struct chmcPmglChunkNode));
 if (node)
  chmc_pmgl_init(node);

 return node;
}
