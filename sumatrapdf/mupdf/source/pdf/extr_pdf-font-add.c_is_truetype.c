
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Face ;


 int ft_font_file_kind (int ) ;

__attribute__((used)) static int is_truetype(FT_Face face)
{
 return ft_font_file_kind(face) == 2;
}
