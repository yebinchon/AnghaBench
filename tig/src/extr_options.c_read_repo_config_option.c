
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_4__ {int seen; } ;
struct TYPE_3__ {scalar_t__* head; int worktree; } ;


 scalar_t__ SIZEOF_REV ;
 int STRING_SIZE (char*) ;
 int SUCCESS ;
 int argv_append (int *,char*) ;
 int atoi (char*) ;
 int default_encoding ;
 TYPE_2__* find_option_info_by_value (int *) ;
 int opt_diff_context ;
 int opt_diff_noprefix ;
 int opt_editor ;
 int * opt_file_args ;
 int opt_id_width ;
 int opt_log_follow ;
 int opt_log_options ;
 int opt_status_show_untracked_files ;
 int option_bind_command ;
 int option_color_command ;
 int option_set_command ;
 int parse_bool (int *,char*) ;
 int parse_int (int *,char*,int ,scalar_t__) ;
 int prefixcmp (char*,char*) ;
 TYPE_1__ repo ;
 int set_encoding (int *,char*,int) ;
 int set_git_color_option (char*,char*) ;
 int set_remote_branch (char*,char*,size_t) ;
 int set_repo_config_option (char*,char*,int ) ;
 int strcmp (char*,char*) ;
 int string_ncopy (int ,char*,size_t) ;
 int strlen (scalar_t__*) ;
 int strncmp (char*,scalar_t__*,int) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static enum status_code
read_repo_config_option(char *name, size_t namelen, char *value, size_t valuelen, void *data)
{
 if (!strcmp(name, "i18n.commitencoding"))
  set_encoding(&default_encoding, value, 0);

 else if (!strcmp(name, "gui.encoding"))
  set_encoding(&default_encoding, value, 1);

 else if (!strcmp(name, "core.editor"))
  string_ncopy(opt_editor, value, valuelen);

 else if (!strcmp(name, "core.worktree"))
  string_ncopy(repo.worktree, value, valuelen);

 else if (!strcmp(name, "core.abbrev"))
  parse_int(&opt_id_width, value, 0, SIZEOF_REV - 1);

 else if (!strcmp(name, "diff.noprefix"))
  parse_bool(&opt_diff_noprefix, value);

 else if (!strcmp(name, "status.showUntrackedFiles"))
  parse_bool(&opt_status_show_untracked_files, value);

 else if (!prefixcmp(name, "tig.color."))
  set_repo_config_option(name + 10, value, option_color_command);

 else if (!prefixcmp(name, "tig.bind."))
  set_repo_config_option(name + 9, value, option_bind_command);

 else if (!prefixcmp(name, "tig."))
  set_repo_config_option(name + 4, value, option_set_command);

 else if (!prefixcmp(name, "color."))
  set_git_color_option(name + STRING_SIZE("color."), value);

 else if (*repo.head && !prefixcmp(name, "branch.") &&
   !strncmp(name + 7, repo.head, strlen(repo.head)))
  set_remote_branch(name + 7 + strlen(repo.head), value, valuelen);

 else if (!strcmp(name, "diff.context")) {
  if (!find_option_info_by_value(&opt_diff_context)->seen)
   opt_diff_context = -atoi(value);

 } else if (!strcmp(name, "format.pretty")) {
  if (!prefixcmp(value, "format:") && strstr(value, "%C("))
   argv_append(&opt_log_options, "--pretty=medium");

 } else if (!strcmp(name, "log.follow") && opt_file_args && !opt_file_args[1])
  parse_bool(&opt_log_follow, value);

 return SUCCESS;
}
