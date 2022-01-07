
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vertical_split { ____Placeholder_vertical_split } vertical_split ;


 int VERTICAL_SPLIT_AUTO ;
 int VERTICAL_SPLIT_VERTICAL ;
 int VSPLIT_SCALE ;

bool
vertical_split_is_enabled(enum vertical_split vsplit, int height, int width)
{
 if (vsplit == VERTICAL_SPLIT_AUTO)
  return width > 160 || width * VSPLIT_SCALE > (height - 1) * 2;
 return vsplit == VERTICAL_SPLIT_VERTICAL;
}
