
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZEOF_STR ;
 int get_temp_dir () ;
 int io_run_append (char const**,int) ;
 int mkstemps (char*,scalar_t__) ;
 int open_editor (char*,unsigned int) ;
 int report (char*) ;
 int string_format (char*,char*,int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int unlink (char*) ;

void
open_blob_editor(const char *id, const char *name, unsigned int lineno)
{
 const char *blob_argv[] = { "git", "cat-file", "blob", id, ((void*)0) };
 char file[SIZEOF_STR];
 int fd;

 if (!name)
  name = "unknown";

 if (!string_format(file, "%s/tigblob.XXXXXX.%s", get_temp_dir(), name)) {
  report("Temporary file name is too long");
  return;
 }

 fd = mkstemps(file, strlen(name) + 1);

 if (fd == -1)
  report("Failed to create temporary file");
 else if (!io_run_append(blob_argv, fd))
  report("Failed to save blob data to file");
 else
  open_editor(file, lineno);
 if (fd != -1)
  unlink(file);
}
