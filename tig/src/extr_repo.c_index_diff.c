
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io {int dummy; } ;
struct index_diff {scalar_t__ untracked; scalar_t__ unstaged; scalar_t__ staged; } ;
struct buffer {int size; char* data; } ;
struct TYPE_2__ {int exec_dir; } ;


 int IO_RD ;
 int io_done (struct io*) ;
 scalar_t__ io_error (struct io*) ;
 scalar_t__ io_get (struct io*,struct buffer*,int ,int) ;
 int io_run (struct io*,int ,int ,int *,char const**) ;
 int memset (struct index_diff*,int ,int) ;
 TYPE_1__ repo ;

bool
index_diff(struct index_diff *diff, bool untracked, bool count_all)
{
 const char *untracked_arg = !untracked ? "--untracked-files=no" :
         count_all ? "--untracked-files=all" :
       "--untracked-files=normal";
 const char *status_argv[] = {
  "git", "status", "--porcelain", "-z", untracked_arg, ((void*)0)
 };
 struct io io;
 struct buffer buf;
 bool ok = 1;

 memset(diff, 0, sizeof(*diff));

 if (!io_run(&io, IO_RD, repo.exec_dir, ((void*)0), status_argv))
  return 0;

 while (io_get(&io, &buf, 0, 1) && (ok = buf.size > 3)) {
  if (buf.data[0] == '?')
   diff->untracked++;

  else if (buf.data[0] != ' ' && buf.data[0] != 'U')
   diff->staged++;
  if (buf.data[1] != ' ' && buf.data[1] != '?')
   diff->unstaged++;
  if (!count_all && diff->staged && diff->unstaged &&
      (!untracked || diff->untracked))
   break;


  if (buf.data[0] == 'R') {
   io_get(&io, &buf, 0, 1);
  }
 }

 if (io_error(&io))
  ok = 0;

 io_done(&io);
 return ok;
}
