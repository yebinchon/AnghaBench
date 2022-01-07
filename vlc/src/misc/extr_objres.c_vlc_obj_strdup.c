
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 scalar_t__ strlen (char const*) ;
 char* vlc_obj_memdup (int *,char const*,scalar_t__) ;

char *vlc_obj_strdup(vlc_object_t *obj, const char *str)
{
    return vlc_obj_memdup(obj, str, strlen(str) + 1);
}
