
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_t ;
struct TYPE_4__ {int * from; int to; } ;
typedef TYPE_1__ substring_t ;


 int ENOMEM ;
 int KM_SLEEP ;
 int MAX_OPT_ARGS ;
 int SET_ERROR (int ) ;
 char* kmem_strdup (char*) ;
 int kmem_strfree (char*) ;
 int * kmem_zalloc (int,int ) ;
 int match_token (char*,int ,TYPE_1__*) ;
 char* strsep (char**,char*) ;
 int zfsvfs_parse_option (char*,int,TYPE_1__*,int *) ;
 int zfsvfs_vfs_free (int *) ;
 int zpl_tokens ;

__attribute__((used)) static int
zfsvfs_parse_options(char *mntopts, vfs_t **vfsp)
{
 vfs_t *tmp_vfsp;
 int error;

 tmp_vfsp = kmem_zalloc(sizeof (vfs_t), KM_SLEEP);

 if (mntopts != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  char *tmp_mntopts, *p, *t;
  int token;

  tmp_mntopts = t = kmem_strdup(mntopts);
  if (tmp_mntopts == ((void*)0))
   return (SET_ERROR(ENOMEM));

  while ((p = strsep(&t, ",")) != ((void*)0)) {
   if (!*p)
    continue;

   args[0].to = args[0].from = ((void*)0);
   token = match_token(p, zpl_tokens, args);
   error = zfsvfs_parse_option(p, token, args, tmp_vfsp);
   if (error) {
    kmem_strfree(tmp_mntopts);
    zfsvfs_vfs_free(tmp_vfsp);
    return (error);
   }
  }

  kmem_strfree(tmp_mntopts);
 }

 *vfsp = tmp_vfsp;

 return (0);
}
