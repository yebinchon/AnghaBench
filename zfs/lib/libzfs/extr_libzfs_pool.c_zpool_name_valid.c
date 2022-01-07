
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namecheck_err_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int pool_namecheck (char const*,int*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int zfs_error_aux (int *,int ,...) ;

boolean_t
zpool_name_valid(libzfs_handle_t *hdl, boolean_t isopen, const char *pool)
{
 namecheck_err_t why;
 char what;
 int ret;

 ret = pool_namecheck(pool, &why, &what);







 if (ret == 0 && !isopen &&
     (strncmp(pool, "mirror", 6) == 0 ||
     strncmp(pool, "raidz", 5) == 0 ||
     strncmp(pool, "spare", 5) == 0 ||
     strcmp(pool, "log") == 0)) {
  if (hdl != ((void*)0))
   zfs_error_aux(hdl,
       dgettext(TEXT_DOMAIN, "name is reserved"));
  return (B_FALSE);
 }


 if (ret != 0) {
  if (hdl != ((void*)0)) {
   switch (why) {
   case 129:
    zfs_error_aux(hdl,
        dgettext(TEXT_DOMAIN, "name is too long"));
    break;

   case 135:
    zfs_error_aux(hdl,
        dgettext(TEXT_DOMAIN, "invalid character "
        "'%c' in pool name"), what);
    break;

   case 132:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "name must begin with a letter"));
    break;

   case 130:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "name is reserved"));
    break;

   case 137:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "pool name is reserved"));
    break;

   case 134:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "leading slash in name"));
    break;

   case 136:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "empty component in name"));
    break;

   case 128:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "trailing slash in name"));
    break;

   case 133:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "multiple '@' and/or '#' delimiters in "
        "name"));
    break;

   case 131:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "permission set is missing '@'"));
    break;

   default:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "(%d) not defined"), why);
    break;
   }
  }
  return (B_FALSE);
 }

 return (B_TRUE);
}
