
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_3__ {int za_integer_length; int za_num_integers; int za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int VERIFY (int) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 scalar_t__ zap_destroy (int *,int ,int *) ;

int
dsl_deleg_destroy(objset_t *mos, uint64_t zapobj, dmu_tx_t *tx)
{
 zap_cursor_t zc;
 zap_attribute_t za;

 if (zapobj == 0)
  return (0);

 for (zap_cursor_init(&zc, mos, zapobj);
     zap_cursor_retrieve(&zc, &za) == 0;
     zap_cursor_advance(&zc)) {
  ASSERT(za.za_integer_length == 8 && za.za_num_integers == 1);
  VERIFY(0 == zap_destroy(mos, za.za_first_integer, tx));
 }
 zap_cursor_fini(&zc);
 VERIFY(0 == zap_destroy(mos, zapobj, tx));
 return (0);
}
