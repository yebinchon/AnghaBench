
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct io {int dummy; } ;
struct file_finder_line {int dummy; } ;
struct file_finder {TYPE_2__** line; TYPE_2__** file; } ;
struct buffer {scalar_t__ size; int data; } ;
struct TYPE_5__ {int text; } ;
struct TYPE_4__ {int exec_dir; } ;


 int IO_RD ;
 TYPE_2__* calloc (int,scalar_t__) ;
 int io_done (struct io*) ;
 scalar_t__ io_error (struct io*) ;
 scalar_t__ io_get (struct io*,struct buffer*,int ,int) ;
 int io_run (struct io*,int ,int ,int *,char const**) ;
 int realloc_file_array (TYPE_2__***,size_t,size_t) ;
 TYPE_1__ repo ;
 scalar_t__ string_rev_is_null (char const*) ;
 int strncpy (int ,int ,scalar_t__) ;

__attribute__((used)) static bool
file_finder_read(struct file_finder *finder, const char *commit)
{
 const char *tree = string_rev_is_null(commit) ? "HEAD" : commit;
 const char *ls_tree_files_argv[] = {
  "git", "ls-tree", "-z", "-r", "--name-only", "--full-name",
   tree, ((void*)0)
 };
 struct buffer buf;
 struct io io;
 size_t files;
 bool ok = 1;

 if (!io_run(&io, IO_RD, repo.exec_dir, ((void*)0), ls_tree_files_argv))
  return 0;

 for (files = 0; io_get(&io, &buf, 0, 1); files++) {

  if (!realloc_file_array(&finder->file, files, 2)) {
   ok = 0;
   break;
  }

  finder->file[files] = calloc(1, sizeof(struct file_finder_line) + buf.size);
  if (!finder->file[files]) {
   ok = 0;
   break;
  }

  strncpy(finder->file[files]->text, buf.data, buf.size);
 }

 if (io_error(&io) || !realloc_file_array(&finder->line, 0, files + 1))
  ok = 0;
 io_done(&io);
 return ok;
}
