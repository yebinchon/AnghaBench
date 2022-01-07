
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ free_space; int signature; } ;
struct chmcPmgiChunk {int data; TYPE_1__ header; } ;
struct chmcPmgiChunkNode {struct chmcPmgiChunk chunk; scalar_t__ index_len; scalar_t__ data_len; } ;


 scalar_t__ CHMC_PMGI_DATA_LEN ;
 int assert (struct chmcPmgiChunkNode*) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,scalar_t__) ;

void chmc_pmgi_init(struct chmcPmgiChunkNode *node)
{
 struct chmcPmgiChunk *chunk;

 assert(node);

 node->data_len = 0;
 node->index_len = 0;

 chunk = &node->chunk;

 memcpy(chunk->header.signature, "PMGI", 4);


 chunk->header.free_space = CHMC_PMGI_DATA_LEN + 2;




 memset(chunk->data, 0, CHMC_PMGI_DATA_LEN);
}
