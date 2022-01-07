
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int write_type_v (int *,int *,int ,int ,char const*) ;

void write_type_decl(FILE *f, type_t *t, const char *name)
{
  write_type_v(f, t, FALSE, TRUE, name);
}
