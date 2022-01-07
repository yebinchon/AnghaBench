
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int FALSE ;
 scalar_t__ is_empty_string (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

gboolean
is_permission_valid (const char *perm)
{
    if (is_empty_string (perm)) {
        return FALSE;
    }

    return strcmp (perm, "r") == 0 || strcmp (perm, "rw") == 0;
}
