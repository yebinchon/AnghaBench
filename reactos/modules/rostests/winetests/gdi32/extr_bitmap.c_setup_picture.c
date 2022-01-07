
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void setup_picture(char *picture, int bpp)
{
    int i;

    switch(bpp)
    {
        case 16:
        case 32:

            for (i = 0; i < 4; i++)
                picture[i * (bpp / 8)] = i;
            break;
        case 24:
            picture[0] = 0;
            picture[3] = 1;

            picture[8] = 2;
            picture[11] = 3;
            break;
    }
}
