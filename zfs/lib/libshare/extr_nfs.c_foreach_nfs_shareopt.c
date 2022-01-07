
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* nfs_shareopt_callback_t ) (char*,char*,void*) ;


 int SA_NO_MEMORY ;
 int SA_OK ;
 int free (char*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
foreach_nfs_shareopt(const char *shareopts,
    nfs_shareopt_callback_t callback, void *cookie)
{
 char *shareopts_dup, *opt, *cur, *value;
 int was_nul, rc;

 if (shareopts == ((void*)0))
  return (SA_OK);

 shareopts_dup = strdup(shareopts);

 if (shareopts_dup == ((void*)0))
  return (SA_NO_MEMORY);

 opt = shareopts_dup;
 was_nul = 0;

 while (1) {
  cur = opt;

  while (*cur != ',' && *cur != '\0')
   cur++;

  if (*cur == '\0')
   was_nul = 1;

  *cur = '\0';

  if (cur > opt) {
   value = strchr(opt, '=');

   if (value != ((void*)0)) {
    *value = '\0';
    value++;
   }

   rc = callback(opt, value, cookie);

   if (rc != SA_OK) {
    free(shareopts_dup);
    return (rc);
   }
  }

  opt = cur + 1;

  if (was_nul)
   break;
 }

 free(shareopts_dup);

 return (0);
}
