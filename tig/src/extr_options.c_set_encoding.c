
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoding {int dummy; } ;


 scalar_t__ SUCCESS ;
 scalar_t__* encoding_arg ;
 scalar_t__ parse_encoding (struct encoding**,char const*,int) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static void
set_encoding(struct encoding **encoding_ref, const char *arg, bool priority)
{
 if (!strcasecmp(arg, "utf-8") || !strcasecmp(arg, "utf8"))
  return;
 if (parse_encoding(encoding_ref, arg, priority) == SUCCESS)
  encoding_arg[0] = 0;
}
