
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t sel; int name; } ;
struct TYPE_4__ {int name; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int GCM_IMPL_NAME_MAX ;
 size_t GCM_IMPL_READ (int ) ;
 int atomic_swap_32 (int *,size_t) ;
 scalar_t__ gcm_impl_initialized ;
 TYPE_2__* gcm_impl_opts ;
 TYPE_1__** gcm_supp_impl ;
 size_t gcm_supp_impl_cnt ;
 int icp_gcm_impl ;
 scalar_t__ isspace (char) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char const*,int) ;
 size_t strnlen (char const*,int) ;
 int user_sel_impl ;

int
gcm_impl_set(const char *val)
{
 int err = -EINVAL;
 char req_name[GCM_IMPL_NAME_MAX];
 uint32_t impl = GCM_IMPL_READ(user_sel_impl);
 size_t i;


 i = strnlen(val, GCM_IMPL_NAME_MAX);
 if (i == 0 || i >= GCM_IMPL_NAME_MAX)
  return (err);

 strlcpy(req_name, val, GCM_IMPL_NAME_MAX);
 while (i > 0 && isspace(req_name[i-1]))
  i--;
 req_name[i] = '\0';


 for (i = 0; i < ARRAY_SIZE(gcm_impl_opts); i++) {
  if (strcmp(req_name, gcm_impl_opts[i].name) == 0) {
   impl = gcm_impl_opts[i].sel;
   err = 0;
   break;
  }
 }


 if (err != 0 && gcm_impl_initialized) {

  for (i = 0; i < gcm_supp_impl_cnt; i++) {
   if (strcmp(req_name, gcm_supp_impl[i]->name) == 0) {
    impl = i;
    err = 0;
    break;
   }
  }
 }

 if (err == 0) {
  if (gcm_impl_initialized)
   atomic_swap_32(&icp_gcm_impl, impl);
  else
   atomic_swap_32(&user_sel_impl, impl);
 }

 return (err);
}
