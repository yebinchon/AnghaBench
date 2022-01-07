
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; scalar_t__ important; int value; } ;
typedef TYPE_1__ fz_css_property ;


 int print_value (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void print_property(fz_css_property *prop)
{
 printf("\t%s: ", prop->name);
 print_value(prop->value);
 if (prop->important)
  printf(" !important");
 printf(";\n");
}
