
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpmtmr {int dummy; } ;


 int free (struct vpmtmr*) ;

void
vpmtmr_cleanup(struct vpmtmr *vpmtmr)
{

 free(vpmtmr);
}
