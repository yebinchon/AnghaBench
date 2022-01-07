
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modspecific_info {char* msi_linkinfo; int msi_p0; } ;
struct modlmisc {int misc_linkinfo; } ;
struct modlinkage {scalar_t__ ml_linkage; int ml_rev; } ;
struct modinfo {scalar_t__ mi_info; void* mi_base; struct modspecific_info* mi_msinfo; int mi_rev; } ;


 scalar_t__ MI_INFO_LINKAGE ;
 int MODL_INFO (struct modlmisc*,struct modlinkage*,int *) ;
 int MODMAXLINK ;
 int MODMAXLINKINFOLEN ;
 int strlcpy (char*,int ,int ) ;

int
mod_info(struct modlinkage *modlp, struct modinfo *modinfop)
{
 int i;
 int retval = 0;
 struct modspecific_info *msip;
 struct modlmisc **linkpp;

 modinfop->mi_rev = modlp->ml_rev;

 linkpp = (struct modlmisc **)modlp->ml_linkage;
 msip = &modinfop->mi_msinfo[0];

 for (i = 0; i < MODMAXLINK; i++) {
  if (*linkpp == ((void*)0)) {
   msip->msi_linkinfo[0] = '\0';
  } else {
   (void) strlcpy(msip->msi_linkinfo,
       (*linkpp)->misc_linkinfo, MODMAXLINKINFOLEN);
   retval = MODL_INFO(*linkpp, modlp, &msip->msi_p0);
   if (retval != 0)
    break;
   linkpp++;
  }
  msip++;
 }

 if (modinfop->mi_info == MI_INFO_LINKAGE) {





  modinfop->mi_base = (void *)modlp;
 }

 if (retval == 0)
  return (1);
 return (0);
}
