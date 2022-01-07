
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cb_literal; } ;
typedef TYPE_1__ iostat_cbdata_t ;
typedef enum iostat_type { ____Placeholder_iostat_type } iostat_type ;
__attribute__((used)) static unsigned int
default_column_width(iostat_cbdata_t *cb, enum iostat_type type)
{
 unsigned long column_width = 5;
 static unsigned long widths[] = {




  [132] = 15,
  [131] = 10,
  [129] = 6,
  [130] = 10,
  [128] = 6,
 };

 if (cb->cb_literal)
  column_width = widths[type];

 return (column_width);
}
