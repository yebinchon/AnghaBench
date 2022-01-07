
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io {int dummy; } ;
struct buffer {scalar_t__ size; char* data; int member_0; } ;
struct TYPE_2__ {int exec_dir; } ;


 int IO_RD ;
 int io_done (struct io*) ;
 int io_error (struct io*) ;
 scalar_t__ io_get (struct io*,struct buffer*,char,int) ;
 int io_run (struct io*,int ,int ,int *,char const**) ;
 TYPE_1__ repo ;
 int string_nformat (char*,size_t,int *,char*,char const*,...) ;

__attribute__((used)) static bool
status_branch_tracking_info(char *buf, size_t buf_len, const char *head,
       const char *remote)
{
 if (!string_nformat(buf, buf_len, ((void*)0), "%s...%s",
       head, remote)) {
  return 0;
 }

 const char *tracking_info_argv[] = {
  "git", "rev-list", "--left-right", buf, ((void*)0)
 };

 struct io io;

 if (!io_run(&io, IO_RD, repo.exec_dir, ((void*)0), tracking_info_argv)) {
  return 0;
 }

 struct buffer result = { 0 };
 int ahead = 0;
 int behind = 0;

 while (io_get(&io, &result, '\n', 1)) {
  if (result.size > 0 && result.data) {
   if (result.data[0] == '<') {
    ahead++;
   } else if (result.data[0] == '>') {
    behind++;
   }
  }
 }

 bool io_failed = io_error(&io);
 io_done(&io);

 if (io_failed) {
  return 0;
 }

 if (ahead == 0 && behind == 0) {
  return string_nformat(buf, buf_len, ((void*)0),
          "Your branch is up-to-date with '%s'.",
          remote);
 } else if (ahead > 0 && behind > 0) {
  return string_nformat(buf, buf_len, ((void*)0),
          "Your branch and '%s' have diverged, "
          "and have %d and %d different commits "
          "each, respectively",
          remote, ahead, behind);
 } else if (ahead > 0) {
  return string_nformat(buf, buf_len, ((void*)0),
          "Your branch is ahead of '%s' by "
          "%d commit%s.", remote, ahead,
          ahead > 1 ? "s" : "");
 } else if (behind > 0) {
  return string_nformat(buf, buf_len, ((void*)0),
          "Your branch is behind '%s' by "
          "%d commit%s.", remote, behind,
          behind > 1 ? "s" : "");
 }

 return 0;
}
