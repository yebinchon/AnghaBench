
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repo_info_state {scalar_t__* argv; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_2__ {int is_inside_work_tree; int * head; int remote; int * head_id; int * prefix; int * cdup; int * exec_dir; int * git_dir; } ;


 char* REPO_INFO_GIT_DIR ;
 char* REPO_INFO_RESOLVED_HEAD ;
 char* REPO_INFO_SHOW_CDUP ;
 char* REPO_INFO_SHOW_PREFIX ;
 char* REPO_INFO_SYMBOLIC_HEAD ;
 char* REPO_INFO_WORK_TREE ;
 int STRING_SIZE (char*) ;
 int SUCCESS ;
 int add_ref (int *,char*,int ,int *) ;
 scalar_t__ iscommit (char*) ;
 int prefixcmp (char*,char*) ;
 TYPE_1__ repo ;
 scalar_t__ strcmp (char const*,char*) ;
 int string_ncopy (int *,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static enum status_code
read_repo_info(char *name, size_t namelen, char *value, size_t valuelen, void *data)
{
 struct repo_info_state *state = data;
 const char *arg = *state->argv ? *state->argv++ : "";

 if (!strcmp(arg, REPO_INFO_GIT_DIR)) {
  string_ncopy(repo.git_dir, name, namelen);

 } else if (!strcmp(arg, REPO_INFO_WORK_TREE)) {





  repo.is_inside_work_tree = strcmp(name, "false") ? 1 : 0;

 } else if (!strcmp(arg, REPO_INFO_SHOW_CDUP)) {
  string_ncopy(repo.cdup, name, namelen);
  if (repo.is_inside_work_tree)
   string_ncopy(repo.exec_dir, name, namelen);

 } else if (!strcmp(arg, REPO_INFO_SHOW_PREFIX)) {





  if (!*repo.cdup && namelen == 40 && iscommit(name))
   return read_repo_info(name, namelen, value, valuelen, data);

  string_ncopy(repo.prefix, name, namelen);

 } else if (!strcmp(arg, REPO_INFO_RESOLVED_HEAD)) {
  string_ncopy(repo.head_id, name, namelen);

 } else if (!strcmp(arg, REPO_INFO_SYMBOLIC_HEAD)) {
  if (!prefixcmp(name, "refs/heads/")) {
   const char *head = name + STRING_SIZE("refs/heads/");

   string_ncopy(repo.head, head, strlen(head) + 1);
   add_ref(repo.head_id, name, repo.remote, repo.head);
  }
  state->argv++;
 }

 return SUCCESS;
}
