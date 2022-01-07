
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPCWSTR ;


 scalar_t__ PREFIX ;

__attribute__((used)) static int PSM_FindLastPrefix(LPCWSTR str, int count)
{
    int i, prefix_count = 0, index = -1;

    for (i = 0; i < count - 1; i++)
    {
        if (str[i] == PREFIX && str[i + 1] != PREFIX)
        {
            index = i - prefix_count;
            prefix_count++;
        }
        else if (str[i] == PREFIX && str[i + 1] == PREFIX)
        {
            i++;
        }
    }
    return index;
}
