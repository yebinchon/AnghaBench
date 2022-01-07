
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* security; int (* callback ) (int ,char*,char const*,char const*,int ) ;int cookie; int sharepath; } ;
typedef TYPE_1__ nfs_host_cookie_t ;


 int SA_NO_MEMORY ;
 int SA_OK ;
 int fprintf (int ,char*,char const*,char const*) ;
 int free (char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 int stub1 (int ,char*,char const*,char const*,int ) ;

__attribute__((used)) static int
foreach_nfs_host_cb(const char *opt, const char *value, void *pcookie)
{
 int rc;
 const char *access;
 char *host_dup, *host, *next;
 nfs_host_cookie_t *udata = (nfs_host_cookie_t *)pcookie;





 if (strcmp(opt, "sec") == 0)
  udata->security = value;

 if (strcmp(opt, "rw") == 0 || strcmp(opt, "ro") == 0) {
  if (value == ((void*)0))
   value = "*";

  access = opt;

  host_dup = strdup(value);

  if (host_dup == ((void*)0))
   return (SA_NO_MEMORY);

  host = host_dup;

  do {
   next = strchr(host, ':');
   if (next != ((void*)0)) {
    *next = '\0';
    next++;
   }

   rc = udata->callback(udata->sharepath, host,
       udata->security, access, udata->cookie);

   if (rc != SA_OK) {
    free(host_dup);

    return (rc);
   }

   host = next;
  } while (host != ((void*)0));

  free(host_dup);
 }

 return (SA_OK);
}
