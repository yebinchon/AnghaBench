
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exec_path ;


 int R_OK ;
 int SIZEOF_MED_STR ;
 int SIZEOF_STR ;
 int X_OK ;
 char* _PATH_DEFPATH ;
 scalar_t__ app_git_exec_path (char*,int) ;
 char* getenv (char*) ;
 int path_search (char*,size_t,char const*,char*,int ) ;
 scalar_t__ strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 int string_format (char*,char*,char const*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int string_ncopy (char*,char const*,int ) ;
 int string_ncopy_do (char*,size_t,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static bool
app_diff_highlight_path_search(char *dest, size_t destlen, const char *query)
{
 if (!query || !*query)
  return 0;

 if (strchr(query, '/')) {

  string_ncopy_do(dest, destlen, query, strlen(query));
  return 1;
 }

 const char *env_path = getenv("PATH");
 char env_path_plus[SIZEOF_MED_STR];
 char exec_path[SIZEOF_STR];

 if (!env_path || !*env_path)
  env_path = _PATH_DEFPATH;

 if (app_git_exec_path(exec_path, sizeof(exec_path)))
  string_format(env_path_plus, "%s:%s/%s:%s/%s:%s/%s:%s/%s",
         env_path,
         exec_path, "../../share/git-core/contrib/diff-highlight",
         exec_path, "../share/git-core/contrib/diff-highlight",
         exec_path, "../../share/git/contrib/diff-highlight",
         exec_path, "../share/git/contrib/diff-highlight");
 else
  string_ncopy(env_path_plus, env_path, strlen(env_path));

 if (!path_search(dest, destlen, query, env_path_plus, X_OK)
     && !strcmp(query, "diff-highlight")
     && !path_search(dest, destlen, "diff-highlight.perl", env_path_plus, R_OK))
  return 0;

 return 1;
}
