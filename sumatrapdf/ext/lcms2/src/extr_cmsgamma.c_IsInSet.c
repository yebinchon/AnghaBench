
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* FunctionTypes; scalar_t__ nFunctions; } ;
typedef TYPE_1__ _cmsParametricCurvesCollection ;


 scalar_t__ abs (int) ;

__attribute__((used)) static
int IsInSet(int Type, _cmsParametricCurvesCollection* c)
{
    int i;

    for (i=0; i < (int) c ->nFunctions; i++)
        if (abs(Type) == c ->FunctionTypes[i]) return i;

    return -1;
}
