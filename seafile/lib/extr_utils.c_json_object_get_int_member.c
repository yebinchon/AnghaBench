
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int gint64 ;


 int json_integer_value (int *) ;
 int * json_object_get (int *,char const*) ;

gint64
json_object_get_int_member (json_t *object, const char *key)
{
    json_t *integer = json_object_get (object, key);
    return json_integer_value (integer);
}
