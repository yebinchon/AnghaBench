
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
struct status {TYPE_1__ new; } ;
struct io {int dummy; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_4__ {int exec_dir; } ;


 int LINE_STAT_UNTRACKED ;
 scalar_t__ io_done (struct io*) ;
 int io_run_bg (char const**,int ) ;
 TYPE_2__ repo ;
 int status_update_prepare (struct io*,int) ;
 int status_update_write (struct io*,struct status*,int) ;
 int strlen (char const*) ;
 int suffixcmp (char const*,int ,char*) ;

bool
status_update_file(struct status *status, enum line_type type)
{
 const char *name = status->new.name;
 struct io io;
 bool result;

 if (type == LINE_STAT_UNTRACKED && !suffixcmp(name, strlen(name), "/")) {
  const char *add_argv[] = { "git", "add", "--", name, ((void*)0) };

  return io_run_bg(add_argv, repo.exec_dir);
 }

 if (!status_update_prepare(&io, type))
  return 0;

 result = status_update_write(&io, status, type);
 return io_done(&io) && result;
}
