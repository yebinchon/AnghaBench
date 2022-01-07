
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void sjis2jis(unsigned char *p1, unsigned char *p2)
{
    unsigned char c1 = *p1;
    unsigned char c2 = *p2;
    int shift = c2 < 159;
    int row = c1 < 160 ? 112 : 176;
    int cell = shift ? (31 + (c2 > 127)): 126;

    *p1 = ((c1 - row) << 1) - shift;
    *p2 -= cell;
}
