
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nData; } ;
typedef TYPE_1__ LeafReader ;



__attribute__((used)) static int leafReaderAtEnd(LeafReader *pReader){
  return pReader->nData<=0;
}
