
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int DWORD ;



__attribute__((used)) static void make_surrogate(DWORD i, WORD out[2])
{
    static const DWORD mask = (1 << 10) - 1;

    if (i <= 0xffff)
    {
        out[0] = i;
        out[1] = 0;
    }
    else
    {
        i -= 0x010000;
        out[0] = ((i >> 10) & mask) + 0xd800;
        out[1] = (i & mask) + 0xdc00;
    }
}
