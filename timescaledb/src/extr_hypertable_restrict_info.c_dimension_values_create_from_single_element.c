
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int consttype; int constvalue; } ;
typedef int DimensionValues ;
typedef TYPE_1__ Const ;


 int DatumGetPointer (int ) ;
 int * dimension_values_create (int ,int ,int) ;
 int list_make1 (int ) ;

__attribute__((used)) static DimensionValues *
dimension_values_create_from_single_element(Const *c, bool user_or)
{
 return dimension_values_create(list_make1(DatumGetPointer(c->constvalue)),
           c->consttype,
           user_or);
}
