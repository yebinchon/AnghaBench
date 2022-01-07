
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gconstpointer ;
struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ fixture_t ;


 int hb_buffer_destroy (int ) ;

__attribute__((used)) static void
fixture_finish (fixture_t *fixture, gconstpointer user_data)
{
  hb_buffer_destroy (fixture->buffer);
}
