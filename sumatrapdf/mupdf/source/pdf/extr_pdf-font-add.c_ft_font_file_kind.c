
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Face ;


 char* FT_Get_Font_Format (int ) ;
 char* FT_Get_X11_Font_Format (int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int ft_font_file_kind(FT_Face face)
{



 const char *kind = FT_Get_X11_Font_Format(face);

 if (!strcmp(kind, "TrueType")) return 2;
 if (!strcmp(kind, "Type 1")) return 1;
 if (!strcmp(kind, "CFF")) return 3;
 if (!strcmp(kind, "CID Type 1")) return 1;
 return 0;
}
