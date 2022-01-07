
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;


 scalar_t__* table ;

__attribute__((used)) static inline int binary_search( WCHAR ch, int low, int high )
{
    while (low <= high)
    {
        int pos = (low + high) / 2;
        if (table[2 * pos] < ch) low = pos + 1;
        else if (table[2 * pos] > ch) high = pos - 1;
        else return pos;
    }
    return -1;
}
