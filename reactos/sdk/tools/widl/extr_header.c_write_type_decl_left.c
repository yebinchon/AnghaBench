
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int FILE ;


 int NAME_DEFAULT ;
 int TRUE ;
 int write_type_left (int *,int *,int ,int ) ;

void write_type_decl_left(FILE *f, type_t *t)
{
  write_type_left(f, t, NAME_DEFAULT, TRUE);
}
