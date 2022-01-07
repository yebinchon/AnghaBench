
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int panic (char*,void*) ;
 scalar_t__ strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strpbrk (char const*,char*) ;

__attribute__((used)) static int
getcomponent(const char *path, char *component, const char **nextp)
{
 char *p;

 if ((path == ((void*)0)) || (path[0] == '\0'))
  return (SET_ERROR(ENOENT));

 p = strpbrk(path, "/@");
 if (p && (p[1] == '/' || p[1] == '@')) {

  return (SET_ERROR(EINVAL));
 }
 if (p == ((void*)0) || p == path) {





  if (p != ((void*)0) &&
      (p[0] != '@' || strpbrk(path+1, "/@") || p[1] == '\0'))
   return (SET_ERROR(EINVAL));
  if (strlen(path) >= ZFS_MAX_DATASET_NAME_LEN)
   return (SET_ERROR(ENAMETOOLONG));
  (void) strcpy(component, path);
  p = ((void*)0);
 } else if (p[0] == '/') {
  if (p - path >= ZFS_MAX_DATASET_NAME_LEN)
   return (SET_ERROR(ENAMETOOLONG));
  (void) strncpy(component, path, p - path);
  component[p - path] = '\0';
  p++;
 } else if (p[0] == '@') {




  if (strchr(path, '/'))
   return (SET_ERROR(EINVAL));
  if (p - path >= ZFS_MAX_DATASET_NAME_LEN)
   return (SET_ERROR(ENAMETOOLONG));
  (void) strncpy(component, path, p - path);
  component[p - path] = '\0';
 } else {
  panic("invalid p=%p", (void *)p);
 }
 *nextp = p;
 return (0);
}
