
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nBlocksize; int nPagesize; scalar_t__ pCompress; } ;
typedef int LsmPgno ;
typedef TYPE_1__ FileSystem ;



__attribute__((used)) static int fsPageToBlock(FileSystem *pFS, LsmPgno iPg){
  if( pFS->pCompress ){
    return (int)((iPg / pFS->nBlocksize) + 1);
  }else{
    return (int)(1 + ((iPg-1) / (pFS->nBlocksize / pFS->nPagesize)));
  }
}
