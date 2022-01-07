
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {int dummy; } ;


 int array_deinit (struct array*) ;
 int nc_free (struct array*) ;

void
array_destroy(struct array *a)
{
    array_deinit(a);
    nc_free(a);
}
