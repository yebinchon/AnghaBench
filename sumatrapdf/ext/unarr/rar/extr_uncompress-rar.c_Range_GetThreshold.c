
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CPpmdRAR_RangeDec {int Code; int Range; } ;
typedef int UInt32 ;



__attribute__((used)) static UInt32 Range_GetThreshold(void *p, UInt32 total)
{
    struct CPpmdRAR_RangeDec *self = p;
    return self->Code / (self->Range /= total);
}
