
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__* PDEFINE ;


 TYPE_1__* FindDefine (char const*,char**) ;

int
EvaluateConstant(const char *p, char **pNext)
{
    PDEFINE pDefine;

    pDefine = FindDefine(p, pNext);
    if (!pDefine)
        return 0;

    return pDefine->val;
}
