
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void convert_path(char *dst, char *src)
{
    int i;

    i = 0;
    while (src[i] != 0)
    {






        if (src[i] == '\\')
        {
            dst[i] = '/';
        }

        else
        {
            dst[i] = src[i];
        }

        i++;
    }
    dst[i] = 0;
}
