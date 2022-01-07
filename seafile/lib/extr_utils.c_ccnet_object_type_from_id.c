
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* g_strndup (char const*,int) ;
 char* strchr (char const*,char) ;

char*
ccnet_object_type_from_id (const char *object_id)
{
    char *ptr;

    if ( !(ptr = strchr(object_id, '/')) )
        return ((void*)0);

    return g_strndup(object_id, ptr - object_id);
}
