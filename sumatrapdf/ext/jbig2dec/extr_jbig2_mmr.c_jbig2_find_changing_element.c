
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int byte ;


 scalar_t__ MINUS1 ;
 int getbit (int const*,scalar_t__) ;

__attribute__((used)) static uint32_t
jbig2_find_changing_element(const byte *line, uint32_t x, uint32_t w)
{
    int a, b;

    if (line == ((void*)0))
        return w;

    if (x == MINUS1) {
        a = 0;
        x = 0;
    } else if (x < w) {
        a = getbit(line, x);
        x++;
    } else {
        return x;
    }

    while (x < w) {
        b = getbit(line, x);
        if (a != b)
            break;
        x++;
    }

    return x;
}
