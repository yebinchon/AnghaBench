
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AnsiLowerBuff (int*,int) ;
 int AnsiUpperBuff (int*,int) ;
 int CharLowerBuff (int*,int) ;
 int CharUpperBuff (int*,int) ;
 int PlatformId () ;
 int get_cmd_argsW (int *) ;
 int* tolower_tab ;
 int* toupper_tab ;

void
mch_early_init(void)
{
    int i;






    for (i = 0; i < 256; ++i)
 toupper_tab[i] = tolower_tab[i] = i;




    AnsiUpperBuff(toupper_tab, 256);
    AnsiLowerBuff(tolower_tab, 256);





}
