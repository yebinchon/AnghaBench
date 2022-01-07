
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcTreeNode {int dummy; } ;
struct chmcFile {int entries_num; struct chmcTreeNode** sort_entries; } ;


 int assert (struct chmcFile*) ;
 int chmc_pmgl_add_entry (struct chmcFile*,struct chmcTreeNode*) ;

void chmc_pmgl_done(struct chmcFile *chm)
{
 struct chmcTreeNode *entry;
 int i;

 assert(chm);

 for(i=0; i < chm->entries_num; i++) {
  entry = chm->sort_entries[i];
  chmc_pmgl_add_entry(chm, entry);
 }
}
