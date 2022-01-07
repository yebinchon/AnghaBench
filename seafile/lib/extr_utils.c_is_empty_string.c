
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 scalar_t__ strcmp (char const*,char*) ;

gboolean
is_empty_string (const char *str)
{
    return !str || strcmp (str, "") == 0;
}
