
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nBlocksize; int nPagesize; int pCompress; } ;
typedef int const LsmPgno ;
typedef TYPE_1__ FileSystem ;


 int assert (int) ;
 int const fsFirstPageOnBlock (TYPE_1__*,int) ;

__attribute__((used)) static int fsIsFirst(FileSystem *pFS, LsmPgno iPg){
  const int nPagePerBlock = (pFS->nBlocksize / pFS->nPagesize);
  assert( !pFS->pCompress );
  return ( (iPg % nPagePerBlock)==1
        || (iPg<nPagePerBlock && iPg==fsFirstPageOnBlock(pFS, 1))
  );
}
