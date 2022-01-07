
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void reverse(int *pidx, int cch)
{
    int temp;
    int ich = 0;
    for (; ich < --cch; ich++)
    {
        temp = pidx[ich];
        pidx[ich] = pidx[cch];
        pidx[cch] = temp;
    }
}
