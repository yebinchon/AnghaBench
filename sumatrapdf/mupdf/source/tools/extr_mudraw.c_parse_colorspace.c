
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int colorspace; int name; } ;


 int CS_ICC ;
 TYPE_1__* cs_name_table ;
 char const* icc_filename ;
 scalar_t__ nelem (TYPE_1__*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
parse_colorspace(const char *name)
{
 int i;

 for (i = 0; i < (int)nelem(cs_name_table); i++)
 {
  if (!strcmp(name, cs_name_table[i].name))
   return cs_name_table[i].colorspace;
 }


 icc_filename = name;
 return CS_ICC;
}
