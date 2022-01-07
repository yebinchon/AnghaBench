
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int name; } ;
typedef int FILE ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* attr_map ;
 int enum_name (int ) ;
 int io_fprintf (int *,char*,int ) ;

__attribute__((used)) static bool
save_option_color_attr(FILE *file, int attr)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(attr_map); i++)
  if ((attr & attr_map[i].value) &&
      !io_fprintf(file, " %s", enum_name(attr_map[i].name)))
   return 0;

 return 1;
}
