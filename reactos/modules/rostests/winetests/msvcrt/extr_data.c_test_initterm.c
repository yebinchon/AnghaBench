
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * _INITTERMFUN ;


 int * initcallback ;
 int initterm_test (int **,int **,int) ;
 int p_initterm ;

__attribute__((used)) static void test_initterm(void)
{
    int i;
    static _INITTERMFUN callbacks[4];

    if (!p_initterm)
        return;

    for (i = 0; i < 4; i++)
    {
        callbacks[i] = initcallback;
    }

    initterm_test(&callbacks[0], &callbacks[1], 1);
    initterm_test(&callbacks[0], &callbacks[2], 2);
    initterm_test(&callbacks[0], &callbacks[3], 3);

    callbacks[1] = ((void*)0);
    initterm_test(&callbacks[0], &callbacks[3], 2);
}
