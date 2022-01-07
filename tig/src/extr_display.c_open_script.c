
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef int buf ;


 int SIZEOF_STR ;
 int SUCCESS ;
 int error (char*,...) ;
 scalar_t__ io_open (int *,char*,char*) ;
 scalar_t__ is_script_executing () ;
 int path_expand (char*,int,char const*) ;
 int script_io ;

enum status_code
open_script(const char *path)
{
 if (is_script_executing())
  return error("Scripts cannot be run from scripts");

 char buf[SIZEOF_STR];

 if (!path_expand(buf, sizeof(buf), path))
  return error("Failed to expand path: %s", path);

 return io_open(&script_io, "%s", buf)
  ? SUCCESS : error("Failed to open %s", buf);
}
