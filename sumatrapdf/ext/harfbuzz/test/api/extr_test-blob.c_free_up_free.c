
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ fixture_t ;


 int free (int ) ;
 int free_up (TYPE_1__*) ;

__attribute__((used)) static void
free_up_free (fixture_t *fixture)
{
  free_up (fixture);
  free (fixture->data);
}
