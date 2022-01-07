
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iLastPg; int iRoot; int iFirst; } ;
typedef TYPE_1__ Segment ;
typedef int FileSystem ;


 scalar_t__ fsPageRedirects (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int fsSegmentRedirects(FileSystem *pFS, Segment *p){
  return (p && (
      fsPageRedirects(pFS, p, p->iFirst)
   || fsPageRedirects(pFS, p, p->iRoot)
   || fsPageRedirects(pFS, p, p->iLastPg)
  ));
}
