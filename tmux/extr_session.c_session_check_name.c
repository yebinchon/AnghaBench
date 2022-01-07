
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strcspn (char const*,char*) ;

int
session_check_name(const char *name)
{
 return (*name != '\0' && name[strcspn(name, ":.")] == '\0');
}
