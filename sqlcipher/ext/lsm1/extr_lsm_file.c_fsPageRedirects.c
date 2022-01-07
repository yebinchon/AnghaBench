
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pRedirect; } ;
typedef TYPE_1__ Segment ;
typedef scalar_t__ LsmPgno ;
typedef int FileSystem ;


 scalar_t__ lsmFsRedirectPage (int *,int ,scalar_t__) ;

__attribute__((used)) static int fsPageRedirects(FileSystem *pFS, Segment *p, LsmPgno iPg){
  return (iPg!=0 && iPg!=lsmFsRedirectPage(pFS, p->pRedirect, iPg));
}
