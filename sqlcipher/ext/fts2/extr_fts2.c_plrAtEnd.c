
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pData; } ;
typedef TYPE_1__ PLReader ;



__attribute__((used)) static int plrAtEnd(PLReader *pReader){
  return pReader->pData==((void*)0);
}
