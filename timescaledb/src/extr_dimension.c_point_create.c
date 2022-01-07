
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_4__ {scalar_t__ num_coords; int cardinality; } ;
typedef TYPE_1__ Point ;


 int POINT_SIZE (int ) ;
 TYPE_1__* palloc0 (int ) ;

__attribute__((used)) static Point *
point_create(int16 num_dimensions)
{
 Point *p = palloc0(POINT_SIZE(num_dimensions));

 p->cardinality = num_dimensions;
 p->num_coords = 0;

 return p;
}
