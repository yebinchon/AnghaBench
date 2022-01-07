
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__* Name ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
name_compare( const void* name1,
              const void* name2 )
{
  Name n1 = (Name)name1;
  Name n2 = (Name)name2;

  return strcmp( n1->name, n2->name );
}
