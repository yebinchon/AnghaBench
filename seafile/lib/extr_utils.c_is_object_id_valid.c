
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 int strlen (char const*) ;

gboolean
is_object_id_valid (const char *obj_id)
{
    if (!obj_id)
        return FALSE;

    int len = strlen(obj_id);
    int i;
    char c;

    if (len != 40)
        return FALSE;

    for (i = 0; i < len; ++i) {
        c = obj_id[i];
        if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f'))
            continue;
        return FALSE;
    }

    return TRUE;
}
