
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcSection {int mark_count; int mark_list; } ;
struct chmcResetTableMark {int list; int at; } ;
struct chmcFile {struct chmcSection** sections; } ;
typedef int UInt64 ;


 int CHMC_ENOMEM ;
 int CHMC_NOERR ;
 int _CHMC_RSTTBL_MARK ;
 int assert (struct chmcFile*) ;
 int chmc_dump (char*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 struct chmcResetTableMark* malloc (int ) ;

int chmc_compressed_add_mark(struct chmcFile *chm, UInt64 at)
{
 struct chmcSection *section;
 struct chmcResetTableMark *mark;

 assert(chm);

 section = chm->sections[1];

 mark = malloc(_CHMC_RSTTBL_MARK);
 if (mark) {
  mark->at = at;
  chmc_dump("[%d] at: %jd\n", section->mark_count, at);
  list_add_tail(&mark->list, &section->mark_list);
  section->mark_count++;
  return CHMC_NOERR;
 }

 return CHMC_ENOMEM;
}
