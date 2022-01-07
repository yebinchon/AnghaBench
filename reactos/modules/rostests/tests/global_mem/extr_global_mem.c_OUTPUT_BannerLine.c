
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY_COLUMNS ;
 int printf (char*) ;

void OUTPUT_BannerLine()
{
    int c = 0;
    printf("+");
    for (c = 1; c < DISPLAY_COLUMNS; c++)
    {
        printf("-");
    }
    printf("\n");
}
