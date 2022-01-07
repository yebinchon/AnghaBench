
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modlmisc {int dummy; } ;
struct modlinkage {scalar_t__ ml_rev; int * ml_linkage; } ;


 int CE_WARN ;
 int EINVAL ;
 int MODL_INSTALL (struct modlmisc*,struct modlinkage*) ;
 int MODL_REMOVE (struct modlmisc*,struct modlinkage*) ;
 scalar_t__ MODREV_1 ;
 int cmn_err (int ,char*) ;

int
mod_install(struct modlinkage *modlp)
{
 int retval = -1;
 struct modlmisc **linkpp;
 struct modlmisc **linkpp1;

 if (modlp->ml_rev != MODREV_1) {
  cmn_err(CE_WARN, "mod_install: "
      "modlinkage structure is not MODREV_1\n");
  return (EINVAL);
 }
 linkpp = (struct modlmisc **)&modlp->ml_linkage[0];

 while (*linkpp != ((void*)0)) {
  if ((retval = MODL_INSTALL(*linkpp, modlp)) != 0) {
   linkpp1 = (struct modlmisc **)&modlp->ml_linkage[0];

   while (linkpp1 != linkpp) {
    MODL_REMOVE(*linkpp1, modlp);
    linkpp1++;
   }
   break;
  }
  linkpp++;
 }
 return (retval);
}
