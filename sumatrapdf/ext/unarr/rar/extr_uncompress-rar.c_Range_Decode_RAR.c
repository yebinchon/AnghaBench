
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct CPpmdRAR_RangeDec {int Low; int Range; int Code; TYPE_1__* Stream; } ;
typedef scalar_t__ int32_t ;
typedef int UInt32 ;
struct TYPE_2__ {int (* Read ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void Range_Decode_RAR(void *p, UInt32 start, UInt32 size)
{
    struct CPpmdRAR_RangeDec *self = p;
    self->Low += start * self->Range;
    self->Code -= start * self->Range;
    self->Range *= size;
    for (;;) {
        if ((self->Low ^ (self->Low + self->Range)) >= (1 << 24)) {
            if (self->Range >= (1 << 15))
                break;
            self->Range = ((uint32_t)(-(int32_t)self->Low)) & ((1 << 15) - 1);
        }
        self->Code = (self->Code << 8) | self->Stream->Read(self->Stream);
        self->Range <<= 8;
        self->Low <<= 8;
    }
}
