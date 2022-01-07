
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;


 int assert (int) ;

__attribute__((used)) static void generate_gray256_palette(DWORD *entries, UINT count)
{
    UINT i;

    assert(count == 256);

    for (i = 0; i < 256; i++)
    {
        entries[i] = 0xff000000;
        entries[i] |= (i << 16) | (i << 8) | i;
    }
}
