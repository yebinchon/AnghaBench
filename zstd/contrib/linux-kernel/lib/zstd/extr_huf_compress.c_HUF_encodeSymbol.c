
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_3__ {int nbBits; int val; } ;
typedef TYPE_1__ HUF_CElt ;
typedef int BIT_CStream_t ;


 int BIT_addBitsFast (int *,int ,int ) ;

__attribute__((used)) static void HUF_encodeSymbol(BIT_CStream_t *bitCPtr, U32 symbol, const HUF_CElt *CTable)
{
 BIT_addBitsFast(bitCPtr, CTable[symbol].val, CTable[symbol].nbBits);
}
