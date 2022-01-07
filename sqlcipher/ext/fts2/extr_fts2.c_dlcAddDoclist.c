
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nData; int pData; } ;
struct TYPE_5__ {scalar_t__ iType; } ;
struct TYPE_7__ {TYPE_2__ b; TYPE_1__ dlw; } ;
typedef int DataBuffer ;
typedef TYPE_3__ DLCollector ;


 scalar_t__ DL_DOCIDS ;
 int POS_END ;
 int VARINT_MAX ;
 int dataBufferAppend (int *,int ,int ) ;
 int dataBufferAppend2 (int *,int ,int ,char*,int) ;
 int putVarint (char*,int ) ;

__attribute__((used)) static void dlcAddDoclist(DLCollector *pCollector, DataBuffer *b){
  if( pCollector->dlw.iType>DL_DOCIDS ){
    char c[VARINT_MAX];
    int n = putVarint(c, POS_END);
    dataBufferAppend2(b, pCollector->b.pData, pCollector->b.nData, c, n);
  }else{
    dataBufferAppend(b, pCollector->b.pData, pCollector->b.nData);
  }
}
