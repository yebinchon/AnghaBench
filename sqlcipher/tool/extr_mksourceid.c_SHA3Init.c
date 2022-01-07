
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nRate; int ixMask; } ;
typedef TYPE_1__ SHA3Context ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void SHA3Init(SHA3Context *p, int iSize){
  memset(p, 0, sizeof(*p));
  if( iSize>=128 && iSize<=512 ){
    p->nRate = (1600 - ((iSize + 31)&~31)*2)/8;
  }else{
    p->nRate = (1600 - 2*256)/8;
  }





  {
    static unsigned int one = 1;
    if( 1==*(unsigned char*)&one ){

      p->ixMask = 0;
    }else{

      p->ixMask = 7;
    }
  }

}
