
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_prev; int block_next; scalar_t__ unknown_0008; scalar_t__ free_space; int signature; } ;
struct chmcPmglChunk {int data; TYPE_1__ header; } ;
struct chmcPmglChunkNode {struct chmcPmglChunk chunk; scalar_t__ index_len; scalar_t__ data_len; } ;


 scalar_t__ CHMC_PMGL_DATA_LEN ;
 int assert (struct chmcPmglChunkNode*) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,scalar_t__) ;

void chmc_pmgl_init(struct chmcPmglChunkNode *node)
{
 struct chmcPmglChunk *chunk;

 assert(node);

 node->data_len = 0;
 node->index_len = 0;

 chunk = &node->chunk;

 memcpy(chunk->header.signature, "PMGL", 4);


 chunk->header.free_space = CHMC_PMGL_DATA_LEN + 2;
 chunk->header.unknown_0008 = 0;
 chunk->header.block_prev = -1;
 chunk->header.block_next = -1;

 memset(chunk->data, 0, CHMC_PMGL_DATA_LEN);
}
