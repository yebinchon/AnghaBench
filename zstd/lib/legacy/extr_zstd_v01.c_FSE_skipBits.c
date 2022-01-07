
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_3__ {int bitsConsumed; } ;
typedef TYPE_1__ FSE_DStream_t ;



__attribute__((used)) static void FSE_skipBits(FSE_DStream_t* bitD, U32 nbBits)
{
    bitD->bitsConsumed += nbBits;
}
