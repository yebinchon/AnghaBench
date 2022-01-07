
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DecodeBit; int Decode; int GetThreshold; } ;
struct CPpmdRAR_RangeDec {int * Stream; TYPE_1__ super; } ;
typedef int IByteIn ;


 int Range_DecodeBit_RAR ;
 int Range_Decode_RAR ;
 int Range_GetThreshold ;

__attribute__((used)) static void PpmdRAR_RangeDec_CreateVTable(struct CPpmdRAR_RangeDec *p, IByteIn *stream)
{
    p->super.GetThreshold = Range_GetThreshold;
    p->super.Decode = Range_Decode_RAR;
    p->super.DecodeBit = Range_DecodeBit_RAR;
    p->Stream = stream;
}
