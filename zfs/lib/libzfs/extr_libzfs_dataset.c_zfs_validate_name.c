
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namecheck_err_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;
 int TEXT_DOMAIN ;
 int ZFS_TYPE_BOOKMARK ;
 int ZFS_TYPE_SNAPSHOT ;
 int dgettext (int ,char*) ;
 scalar_t__ entity_namecheck (char const*,int*,char*) ;
 int * strchr (char const*,char) ;
 int zfs_error_aux (int *,int ,...) ;

int
zfs_validate_name(libzfs_handle_t *hdl, const char *path, int type,
    boolean_t modifying)
{
 namecheck_err_t why;
 char what;

 if (!(type & ZFS_TYPE_SNAPSHOT) && strchr(path, '@') != ((void*)0)) {
  if (hdl != ((void*)0))
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "snapshot delimiter '@' is not expected here"));
  return (0);
 }

 if (type == ZFS_TYPE_SNAPSHOT && strchr(path, '@') == ((void*)0)) {
  if (hdl != ((void*)0))
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "missing '@' delimiter in snapshot name"));
  return (0);
 }

 if (!(type & ZFS_TYPE_BOOKMARK) && strchr(path, '#') != ((void*)0)) {
  if (hdl != ((void*)0))
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "bookmark delimiter '#' is not expected here"));
  return (0);
 }

 if (type == ZFS_TYPE_BOOKMARK && strchr(path, '#') == ((void*)0)) {
  if (hdl != ((void*)0))
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "missing '#' delimiter in bookmark name"));
  return (0);
 }

 if (modifying && strchr(path, '%') != ((void*)0)) {
  if (hdl != ((void*)0))
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "invalid character %c in name"), '%');
  return (0);
 }

 if (entity_namecheck(path, &why, &what) != 0) {
  if (hdl != ((void*)0)) {
   switch (why) {
   case 129:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "name is too long"));
    break;

   case 135:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "leading slash in name"));
    break;

   case 137:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "empty component or misplaced '@'"
        " or '#' delimiter in name"));
    break;

   case 128:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "trailing slash in name"));
    break;

   case 136:
    zfs_error_aux(hdl,
        dgettext(TEXT_DOMAIN, "invalid character "
        "'%c' in name"), what);
    break;

   case 134:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "multiple '@' and/or '#' delimiters in "
        "name"));
    break;

   case 133:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "pool doesn't begin with a letter"));
    break;

   case 131:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "name is reserved"));
    break;

   case 138:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "reserved disk name"));
    break;

   case 130:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "self reference, '.' is found in name"));
    break;

   case 132:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "parent reference, '..' is found in name"));
    break;

   default:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "(%d) not defined"), why);
    break;
   }
  }

  return (0);
 }

 return (-1);
}
