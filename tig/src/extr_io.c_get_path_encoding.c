
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoding {int dummy; } ;
typedef int buf ;


 int CHARSET_SEP ;
 int ENCODING_SEP ;
 char* ENCODING_UTF8 ;
 int SIZEOF_STR ;
 int STRING_SIZE (int ) ;
 struct encoding* encoding_open (char*) ;
 int io_run_buf (char const**,char*,int,int *,int) ;
 int strcmp (char*,char*) ;
 char* strstr (char*,int ) ;

struct encoding *
get_path_encoding(const char *path, struct encoding *default_encoding)
{
 const char *check_attr_argv[] = {
  "git", "check-attr", "encoding", "--", path, ((void*)0)
 };
 char buf[SIZEOF_STR];
 char *encoding;



 if (!*path || !io_run_buf(check_attr_argv, buf, sizeof(buf), ((void*)0), 0)
     || !(encoding = strstr(buf, ENCODING_SEP)))
  return default_encoding;

 encoding += STRING_SIZE(ENCODING_SEP);
 if (!strcmp(encoding, ENCODING_UTF8)
     || !strcmp(encoding, "unspecified")
     || !strcmp(encoding, "set")) {
  const char *file_argv[] = {
   "file", "--mime", "--", path, ((void*)0)
  };

  if (!*path || !io_run_buf(file_argv, buf, sizeof(buf), ((void*)0), 0)
      || !(encoding = strstr(buf, CHARSET_SEP)))
   return default_encoding;

  encoding += STRING_SIZE(CHARSET_SEP);
 }

 return encoding_open(encoding);
}
