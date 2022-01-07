
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;



__attribute__((used)) static inline int exit_shift(LPSTR out, int c)
{
    if (out)
    {
        out[c] = 0x1b;
        out[c+1] = '(';
        out[c+2] = 'B';
    }
    return 3;
}
