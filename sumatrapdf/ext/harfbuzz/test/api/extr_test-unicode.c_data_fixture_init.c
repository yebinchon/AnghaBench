
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gconstpointer ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef TYPE_2__ data_fixture_t ;
struct TYPE_4__ {int value; } ;


 int MAGIC0 ;
 int MAGIC1 ;

__attribute__((used)) static void
data_fixture_init (data_fixture_t *f, gconstpointer user_data)
{
  f->data[0].value = MAGIC0;
  f->data[1].value = MAGIC1;
}
