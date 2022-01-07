
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t sel; int name; } ;
struct TYPE_4__ {int name; } ;


 int AES_IMPL_NAME_MAX ;
 size_t AES_IMPL_READ (int ) ;
 size_t ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 scalar_t__ aes_impl_initialized ;
 TYPE_2__* aes_impl_opts ;
 TYPE_1__** aes_supp_impl ;
 size_t aes_supp_impl_cnt ;
 int atomic_swap_32 (int *,size_t) ;
 int icp_aes_impl ;
 scalar_t__ isspace (char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char const*,int) ;
 size_t strnlen (char const*,int) ;
 int user_sel_impl ;

int
aes_impl_set(const char *val)
{
 int err = -EINVAL;
 char req_name[AES_IMPL_NAME_MAX];
 uint32_t impl = AES_IMPL_READ(user_sel_impl);
 size_t i;


 i = strnlen(val, AES_IMPL_NAME_MAX);
 if (i == 0 || i >= AES_IMPL_NAME_MAX)
  return (err);

 strlcpy(req_name, val, AES_IMPL_NAME_MAX);
 while (i > 0 && isspace(req_name[i-1]))
  i--;
 req_name[i] = '\0';


 for (i = 0; i < ARRAY_SIZE(aes_impl_opts); i++) {
  if (strcmp(req_name, aes_impl_opts[i].name) == 0) {
   impl = aes_impl_opts[i].sel;
   err = 0;
   break;
  }
 }


 if (err != 0 && aes_impl_initialized) {

  for (i = 0; i < aes_supp_impl_cnt; i++) {
   if (strcmp(req_name, aes_supp_impl[i]->name) == 0) {
    impl = i;
    err = 0;
    break;
   }
  }
 }

 if (err == 0) {
  if (aes_impl_initialized)
   atomic_swap_32(&icp_aes_impl, impl);
  else
   atomic_swap_32(&user_sel_impl, impl);
 }

 return (err);
}
