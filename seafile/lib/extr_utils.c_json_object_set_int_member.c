
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int gint64 ;


 int json_integer (int ) ;
 int json_object_set_new (int *,char const*,int ) ;

void
json_object_set_int_member (json_t *object, const char *key, gint64 value)
{
    json_object_set_new (object, key, json_integer (value));
}
