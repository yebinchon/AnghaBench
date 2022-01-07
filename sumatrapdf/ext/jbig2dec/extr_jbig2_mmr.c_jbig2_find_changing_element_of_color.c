
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int byte ;


 int getbit (int const*,scalar_t__) ;
 scalar_t__ jbig2_find_changing_element (int const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t
jbig2_find_changing_element_of_color(const byte *line, uint32_t x, uint32_t w, int color)
{
    if (line == ((void*)0))
        return w;
    x = jbig2_find_changing_element(line, x, w);
    if (x < w && getbit(line, x) != color)
        x = jbig2_find_changing_element(line, x, w);
    return x;
}
