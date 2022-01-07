
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct config_state {char const* member_0; int member_2; int errors; int lineno; int member_1; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef int buf ;


 scalar_t__ ENOENT ;
 int ERROR_FILE_DOES_NOT_EXIST ;
 int SIZEOF_STR ;
 int SUCCESS ;
 int error (char*,char const*,...) ;
 scalar_t__ io_error (struct io*) ;
 int io_load_span (struct io*,char*,int *,int ,struct config_state*) ;
 int io_open (struct io*,char*,char*) ;
 char* io_strerror (struct io*) ;
 int path_expand (char*,int,char const*) ;
 int read_option ;
 int strlen (char const*) ;
 int warn (char*,char*) ;

__attribute__((used)) static enum status_code
load_option_file(const char *path)
{
 struct config_state config = { path, 0, 0 };
 struct io io;
 char buf[SIZEOF_STR];


 if (!path || !strlen(path))
  return SUCCESS;

 if (!path_expand(buf, sizeof(buf), path))
  return error("Failed to expand path: %s", path);


 if (!io_open(&io, "%s", buf)) {


  if (io_error(&io) == ENOENT)
   return ERROR_FILE_DOES_NOT_EXIST;
  return error("Error loading file %s: %s", buf, io_strerror(&io));
 }

 if (io_load_span(&io, " \t", &config.lineno, read_option, &config) != SUCCESS ||
     config.errors == 1)
  warn("Errors while loading %s.", buf);
 return SUCCESS;
}
