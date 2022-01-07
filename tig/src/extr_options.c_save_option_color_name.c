
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int name; } ;
typedef int FILE ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* color_map ;
 int enum_name (int ) ;
 int io_fprintf (int *,char*,int) ;

__attribute__((used)) static bool
save_option_color_name(FILE *file, int color)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(color_map); i++)
  if (color_map[i].value == color)
   return io_fprintf(file, " %-8s", enum_name(color_map[i].name));

 return io_fprintf(file, " color%d", color);
}
