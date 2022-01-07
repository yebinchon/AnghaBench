
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcTreeNode {int dummy; } ;
struct chmcSection {int offset; } ;
struct chmcFile {int sections_num; struct chmcSection** sections; } ;
typedef scalar_t__ UInt64 ;
typedef int UChar ;


 int assert (struct chmcFile*) ;
 struct chmcTreeNode* chmc_add_entry (struct chmcFile*,char const*,int ,int,int *,int ,scalar_t__) ;

struct chmcTreeNode *chmc_add_meta(struct chmcFile *chm, const char *metaname,
                                   int sect_id,
              UChar *buf, UInt64 len)
{
 struct chmcSection *section;
 struct chmcTreeNode *node;

 assert(chm);

 if (sect_id >= chm->sections_num)
  return ((void*)0);

 section = chm->sections[sect_id];

 node = chmc_add_entry(chm, metaname, 0, sect_id, buf, section->offset, len);

 if ((node) && (len > 0))
  section->offset += len;

 return node;
}
