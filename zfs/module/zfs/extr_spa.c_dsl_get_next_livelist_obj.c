
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_3__ {int za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int objset_t ;


 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 int zap_cursor_retrieve (int *,TYPE_1__*) ;

__attribute__((used)) static int
dsl_get_next_livelist_obj(objset_t *os, uint64_t zap_obj, uint64_t *llp)
{
 int err;
 zap_cursor_t zc;
 zap_attribute_t za;
 zap_cursor_init(&zc, os, zap_obj);
 err = zap_cursor_retrieve(&zc, &za);
 zap_cursor_fini(&zc);
 if (err == 0)
  *llp = za.za_first_integer;
 return (err);
}
