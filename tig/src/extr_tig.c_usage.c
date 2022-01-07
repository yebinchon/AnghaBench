
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*,int ) ;
 int usage_string ;

void
usage(const char *message)
{
 die("%s\n\n%s", message, usage_string);
}
