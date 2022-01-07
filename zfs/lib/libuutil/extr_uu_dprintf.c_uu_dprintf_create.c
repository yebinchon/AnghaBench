
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uud_flags; int uud_severity; int * uud_name; } ;
typedef TYPE_1__ uu_dprintf_t ;
typedef int uu_dprintf_severity_t ;
typedef int uint_t ;


 int UU_ERROR_INVALID_ARGUMENT ;
 int UU_NAME_DOMAIN ;
 int * strdup (char const*) ;
 int uu_check_name (char const*,int ) ;
 int uu_free (TYPE_1__*) ;
 int uu_set_error (int ) ;
 TYPE_1__* uu_zalloc (int) ;

uu_dprintf_t *
uu_dprintf_create(const char *name, uu_dprintf_severity_t severity,
    uint_t flags)
{
 uu_dprintf_t *D;

 if (name != ((void*)0) &&
     uu_check_name(name, UU_NAME_DOMAIN) == -1) {
  uu_set_error(UU_ERROR_INVALID_ARGUMENT);
  return (((void*)0));
 }

 if ((D = uu_zalloc(sizeof (uu_dprintf_t))) == ((void*)0))
  return (((void*)0));

 if (name != ((void*)0)) {
  D->uud_name = strdup(name);
  if (D->uud_name == ((void*)0)) {
   uu_free(D);
   return (((void*)0));
  }
 } else {
  D->uud_name = ((void*)0);
 }

 D->uud_severity = severity;
 D->uud_flags = flags;

 return (D);
}
