
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nBlocksize; int nPagesize; int pCompress; } ;
typedef int const LsmPgno ;
typedef TYPE_1__ FileSystem ;


 int assert (int) ;

__attribute__((used)) static int fsIsLast(FileSystem *pFS, LsmPgno iPg){
  const int nPagePerBlock = (pFS->nBlocksize / pFS->nPagesize);
  assert( !pFS->pCompress );
  return ( iPg && (iPg % nPagePerBlock)==0 );
}
