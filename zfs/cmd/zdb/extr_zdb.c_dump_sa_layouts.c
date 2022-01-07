
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_3__ {char* za_name; int za_num_integers; int za_integer_length; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
typedef int objset_t ;


 int UMEM_NOFAIL ;
 int VERIFY (int) ;
 int dump_zap_stats (int *,int ) ;
 int printf (char*,...) ;
 int umem_free (scalar_t__*,int) ;
 scalar_t__* umem_zalloc (int,int ) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 scalar_t__ zap_lookup (int *,int ,char*,int,int,scalar_t__*) ;

__attribute__((used)) static void
dump_sa_layouts(objset_t *os, uint64_t object, void *data, size_t size)
{
 zap_cursor_t zc;
 zap_attribute_t attr;
 uint16_t *layout_attrs;
 unsigned i;

 dump_zap_stats(os, object);
 (void) printf("\n");

 for (zap_cursor_init(&zc, os, object);
     zap_cursor_retrieve(&zc, &attr) == 0;
     zap_cursor_advance(&zc)) {
  (void) printf("\t\t%s = [", attr.za_name);
  if (attr.za_num_integers == 0) {
   (void) printf("\n");
   continue;
  }

  VERIFY(attr.za_integer_length == 2);
  layout_attrs = umem_zalloc(attr.za_num_integers *
      attr.za_integer_length, UMEM_NOFAIL);

  VERIFY(zap_lookup(os, object, attr.za_name,
      attr.za_integer_length,
      attr.za_num_integers, layout_attrs) == 0);

  for (i = 0; i != attr.za_num_integers; i++)
   (void) printf(" %d ", (int)layout_attrs[i]);
  (void) printf("]\n");
  umem_free(layout_attrs,
      attr.za_num_integers * attr.za_integer_length);
 }
 zap_cursor_fini(&zc);
}
