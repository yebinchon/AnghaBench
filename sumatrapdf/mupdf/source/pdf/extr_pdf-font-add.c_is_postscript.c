
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Face ;


 int ft_font_file_kind (int ) ;

__attribute__((used)) static int is_postscript(FT_Face face)
{
 int kind = ft_font_file_kind(face);
 return (kind == 1 || kind == 3);
}
