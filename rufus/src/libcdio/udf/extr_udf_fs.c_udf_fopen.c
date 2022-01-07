
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int b_parent; int b_dir; int psz_name; TYPE_3__* p_udf; int fe; } ;
typedef TYPE_1__ udf_dirent_t ;
struct TYPE_9__ {scalar_t__ i_position; } ;


 scalar_t__ strncmp (char*,char const*,int) ;
 int strncpy (char*,char const*,int) ;
 char* strtok (char*,int ) ;
 int udf_MAX_PATHLEN ;
 int udf_PATH_DELIMITERS ;
 TYPE_1__* udf_ff_traverse (TYPE_1__*,char*) ;
 TYPE_1__* udf_new_dirent (int *,TYPE_3__*,int ,int ,int ) ;

udf_dirent_t *
udf_fopen(udf_dirent_t *p_udf_root, const char *psz_name)
{
  udf_dirent_t *p_udf_file = ((void*)0);

  if (p_udf_root) {
    char tokenline[udf_MAX_PATHLEN];
    char *psz_token;


    p_udf_root->p_udf->i_position = 0;

    strncpy(tokenline, psz_name, udf_MAX_PATHLEN-1);
    tokenline[udf_MAX_PATHLEN-1] = '\0';
    psz_token = strtok(tokenline, udf_PATH_DELIMITERS);
    if (psz_token) {
      udf_dirent_t *p_udf_dirent =
 udf_new_dirent(&p_udf_root->fe, p_udf_root->p_udf,
         p_udf_root->psz_name, p_udf_root->b_dir,
         p_udf_root->b_parent);
      p_udf_file = udf_ff_traverse(p_udf_dirent, psz_token);
    }
    else if ( 0 == strncmp("/", psz_name, sizeof("/")) ) {
      return udf_new_dirent(&p_udf_root->fe, p_udf_root->p_udf,
       p_udf_root->psz_name, p_udf_root->b_dir,
       p_udf_root->b_parent);
    }
  }
  return p_udf_file;
}
