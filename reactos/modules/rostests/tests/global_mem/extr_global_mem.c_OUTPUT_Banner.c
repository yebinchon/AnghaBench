
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OUTPUT_BannerLine () ;
 int OUTPUT_Line (char const*) ;

void OUTPUT_Banner(const char *szBanner)
{
    OUTPUT_BannerLine();
    OUTPUT_Line(szBanner);
    OUTPUT_BannerLine();
}
