
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {char* fis_name; size_t fis_sel; } ;
struct TYPE_4__ {char* name; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 size_t IMPL_READ (int ) ;
 int atomic_swap_32 (int *,size_t) ;
 int fletcher_4_impl_chosen ;
 TYPE_2__* fletcher_4_impl_selectors ;
 scalar_t__ fletcher_4_initialized ;
 TYPE_1__** fletcher_4_supp_impls ;
 size_t fletcher_4_supp_impls_cnt ;
 int isspace (char const) ;
 int membar_producer () ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

int
fletcher_4_impl_set(const char *val)
{
 int err = -EINVAL;
 uint32_t impl = IMPL_READ(fletcher_4_impl_chosen);
 size_t i, val_len;

 val_len = strlen(val);
 while ((val_len > 0) && !!isspace(val[val_len-1]))
  val_len--;


 for (i = 0; i < ARRAY_SIZE(fletcher_4_impl_selectors); i++) {
  const char *name = fletcher_4_impl_selectors[i].fis_name;

  if (val_len == strlen(name) &&
      strncmp(val, name, val_len) == 0) {
   impl = fletcher_4_impl_selectors[i].fis_sel;
   err = 0;
   break;
  }
 }

 if (err != 0 && fletcher_4_initialized) {

  for (i = 0; i < fletcher_4_supp_impls_cnt; i++) {
   const char *name = fletcher_4_supp_impls[i]->name;

   if (val_len == strlen(name) &&
       strncmp(val, name, val_len) == 0) {
    impl = i;
    err = 0;
    break;
   }
  }
 }

 if (err == 0) {
  atomic_swap_32(&fletcher_4_impl_chosen, impl);
  membar_producer();
 }

 return (err);
}
