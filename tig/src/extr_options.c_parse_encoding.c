
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoding {int dummy; } ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
typedef int buf ;


 int SIZEOF_STR ;
 int SUCCESS ;
 struct encoding* encoding_open (char*) ;
 int parse_string (char*,char const*,int) ;

__attribute__((used)) static enum status_code
parse_encoding(struct encoding **encoding_ref, const char *arg, bool priority)
{
 char buf[SIZEOF_STR];
 enum status_code code = parse_string(buf, arg, sizeof(buf));

 if (code == SUCCESS) {
  struct encoding *encoding = *encoding_ref;

  if (encoding && !priority)
   return code;
  encoding = encoding_open(buf);
  if (encoding)
   *encoding_ref = encoding;
 }

 return code;
}
