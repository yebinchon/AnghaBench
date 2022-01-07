
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcItspHeader {int num_blocks; } ;
struct chmcPmgiChunkNode {struct chmcPmgiChunkNode* pmgi_last; int pmgi_list; int list; struct chmcItspHeader itsp; } ;
struct chmcFile {struct chmcFile* pmgi_last; int pmgi_list; int list; struct chmcItspHeader itsp; } ;


 int assert (struct chmcPmgiChunkNode*) ;
 int list_add_tail (int *,int *) ;

void chmc_pmgi_add(struct chmcFile *chm, struct chmcPmgiChunkNode *pmgi)
{
 struct chmcItspHeader *itsp = &chm->itsp;

 assert(chm);
 assert(pmgi);

 list_add_tail(&pmgi->list, &chm->pmgi_list);
 itsp->num_blocks++;

 chm->pmgi_last = pmgi;
}
