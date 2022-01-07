
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_easy_font_height (int ) ;
 int stb_easy_font_print (int ,int ,int ,int ,int ,int ) ;
 int stb_easy_font_spacing (int ) ;
 int stb_easy_font_width (int ) ;

void ef_dummy(void)
{

   stb_easy_font_spacing(0);
   stb_easy_font_print(0,0,0,0,0,0);
   stb_easy_font_width(0);
   stb_easy_font_height(0);
}
