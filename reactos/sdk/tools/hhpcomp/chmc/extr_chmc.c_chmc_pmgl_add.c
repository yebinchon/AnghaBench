
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chmcPmglHeader {scalar_t__ block_next; scalar_t__ block_prev; } ;
struct TYPE_2__ {struct chmcPmglHeader header; } ;
struct chmcItspHeader {scalar_t__ num_blocks; scalar_t__ index_last; } ;
struct chmcPmglChunkNode {struct chmcPmglChunkNode* pmgl_last; TYPE_1__ chunk; int pmgl_list; int list; struct chmcItspHeader itsp; } ;
struct chmcFile {struct chmcFile* pmgl_last; TYPE_1__ chunk; int pmgl_list; int list; struct chmcItspHeader itsp; } ;


 int assert (struct chmcPmglChunkNode*) ;
 int list_add_tail (int *,int *) ;

void chmc_pmgl_add(struct chmcFile *chm, struct chmcPmglChunkNode *pmgl)
{
 struct chmcItspHeader *itsp = &chm->itsp;
 struct chmcPmglHeader *hdr;

 assert(chm);
 assert(pmgl);

 list_add_tail(&pmgl->list, &chm->pmgl_list);

 itsp->index_last = itsp->num_blocks;

 hdr = &pmgl->chunk.header;
 hdr->block_prev = itsp->num_blocks - 1;

 if (chm->pmgl_last) {
  hdr = &chm->pmgl_last->chunk.header;
  hdr->block_next = itsp->num_blocks;
 }

 itsp->num_blocks++;

 chm->pmgl_last = pmgl;
}
