
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ b_dir; int psz_name; } ;
typedef TYPE_1__ udf_dirent_t ;


 scalar_t__ strcmp (char*,int ) ;
 char* strtok (int *,int ) ;
 int udf_PATH_DELIMITERS ;
 int udf_dirent_free (TYPE_1__*) ;
 TYPE_1__* udf_opendir (TYPE_1__*) ;
 TYPE_1__* udf_readdir (TYPE_1__*) ;

__attribute__((used)) static
udf_dirent_t *
udf_ff_traverse(udf_dirent_t *p_udf_dirent, char *psz_token)
{
  while ((p_udf_dirent = udf_readdir(p_udf_dirent))) {
    if (strcmp(psz_token, p_udf_dirent->psz_name) == 0) {
      char *next_tok = strtok(((void*)0), udf_PATH_DELIMITERS);

      if (!next_tok)
 return p_udf_dirent;
      else if (p_udf_dirent->b_dir) {
 udf_dirent_t * p_udf_dirent_next = udf_opendir(p_udf_dirent);

 if (p_udf_dirent_next) {

   udf_dirent_free(p_udf_dirent);


   p_udf_dirent_next = udf_ff_traverse(p_udf_dirent_next, next_tok);

   return p_udf_dirent_next;
 }
      }
    }
  }

  return ((void*)0);
}
