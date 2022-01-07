
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; int za_num_integers; int za_first_integer; int za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int EINVAL ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int zap_add (int *,int ,int ,int,int,int *,int *) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;

int
zap_join(objset_t *os, uint64_t fromobj, uint64_t intoobj, dmu_tx_t *tx)
{
 zap_cursor_t zc;
 int err = 0;

 zap_attribute_t *za = kmem_alloc(sizeof (*za), KM_SLEEP);
 for (zap_cursor_init(&zc, os, fromobj);
     zap_cursor_retrieve(&zc, za) == 0;
     (void) zap_cursor_advance(&zc)) {
  if (za->za_integer_length != 8 || za->za_num_integers != 1) {
   err = SET_ERROR(EINVAL);
   break;
  }
  err = zap_add(os, intoobj, za->za_name,
      8, 1, &za->za_first_integer, tx);
  if (err != 0)
   break;
 }
 zap_cursor_fini(&zc);
 kmem_free(za, sizeof (*za));
 return (err);
}
