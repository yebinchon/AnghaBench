
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int test_root(int a, int b)
{
    if (a == 0)
        return 1;
    while (1)
    {
        if (a == 1)
            return 1;
        if (a % b)
            return 0;
        a = a / b;
    }
}
