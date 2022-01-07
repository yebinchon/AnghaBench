
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* cmsFloat64Number ;
typedef scalar_t__ cmsBool ;


 void* InputRange ;
 void* OutputRange ;

__attribute__((used)) static
void SetRange(cmsFloat64Number range, cmsBool IsInput)
{
    if (IsInput)
        InputRange = range;
    else
        OutputRange = range;
}
