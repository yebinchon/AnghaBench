
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef int cwd ;


 int SUCCESS ;
 scalar_t__ chdir (char const*) ;
 int error (char*,...) ;
 int getcwd (char*,int) ;
 char* getenv (char*) ;
 scalar_t__ setenv (char*,char*,int) ;

__attribute__((used)) static inline enum status_code
handle_git_prefix(void)
{
 const char *prefix = getenv("GIT_PREFIX");
 char cwd[4096];

 if (!prefix || !*prefix)
  return SUCCESS;






 if (!getcwd(cwd, sizeof(cwd)))
  return error("Failed to read CWD");
 if (setenv("GIT_WORK_TREE", cwd, 1))
  return error("Failed to set GIT_WORK_TREE");
 if (chdir(prefix))
  return error("Failed to change directory to %s", prefix);
 if (setenv("GIT_PREFIX", "", 1))
  return error("Failed to clear GIT_PREFIX");

 return SUCCESS;
}
