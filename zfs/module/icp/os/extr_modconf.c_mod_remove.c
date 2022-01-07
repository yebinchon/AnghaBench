
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modlmisc {int misc_linkinfo; } ;
struct modlinkage {int * ml_linkage; } ;


 int CE_WARN ;
 scalar_t__ MODL_INSTALL (struct modlmisc*,struct modlinkage*) ;
 int MODL_REMOVE (struct modlmisc*,struct modlinkage*) ;
 int cmn_err (int ,int ,int ) ;
 int reins_err ;

int
mod_remove(struct modlinkage *modlp)
{
 int retval = 0;
 struct modlmisc **linkpp, *last_linkp;

 linkpp = (struct modlmisc **)&modlp->ml_linkage[0];

 while (*linkpp != ((void*)0)) {
  if ((retval = MODL_REMOVE(*linkpp, modlp)) != 0) {
   last_linkp = *linkpp;
   linkpp = (struct modlmisc **)&modlp->ml_linkage[0];
   while (*linkpp != last_linkp) {
    if (MODL_INSTALL(*linkpp, modlp) != 0) {
     cmn_err(CE_WARN, reins_err,
         (*linkpp)->misc_linkinfo);
     break;
    }
    linkpp++;
   }
   break;
  }
  linkpp++;
 }
 return (retval);
}
