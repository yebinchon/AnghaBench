
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcTreeNode {int dummy; } ;
struct chmcFile {int dummy; } ;


 int assert (struct chmcFile*) ;
 struct chmcTreeNode* chmc_add_entry (struct chmcFile*,char const*,int ,int ,int *,int ,int ) ;

struct chmcTreeNode *chmc_add_dir(struct chmcFile *chm, const char *dir)
{
 assert(chm);

 return chmc_add_entry(chm, dir, 0, 0, ((void*)0), 0, 0);
}
