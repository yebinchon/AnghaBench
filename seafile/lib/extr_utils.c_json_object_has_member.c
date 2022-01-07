
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int gboolean ;


 int * json_object_get (int *,char const*) ;

gboolean
json_object_has_member (json_t *object, const char *key)
{
    return (json_object_get (object, key) != ((void*)0));
}
