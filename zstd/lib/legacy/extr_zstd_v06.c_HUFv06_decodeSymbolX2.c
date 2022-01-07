
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int nbBits; int const byte; } ;
typedef TYPE_1__ HUFv06_DEltX2 ;
typedef int const BYTE ;
typedef int BITv06_DStream_t ;


 size_t BITv06_lookBitsFast (int *,int const) ;
 int BITv06_skipBits (int *,int ) ;

__attribute__((used)) static BYTE HUFv06_decodeSymbolX2(BITv06_DStream_t* Dstream, const HUFv06_DEltX2* dt, const U32 dtLog)
{
    const size_t val = BITv06_lookBitsFast(Dstream, dtLog);
    const BYTE c = dt[val].byte;
    BITv06_skipBits(Dstream, dt[val].nbBits);
    return c;
}
