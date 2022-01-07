
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ uuid_parse (char const*,int ) ;

gboolean
is_uuid_valid (const char *uuid_str)
{
    uuid_t uuid;

    if (!uuid_str)
        return FALSE;

    if (uuid_parse (uuid_str, uuid) < 0)
        return FALSE;
    return TRUE;
}
