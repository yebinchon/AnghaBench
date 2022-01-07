
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 int * json_variant_by_key_full (int *,char const*,int *) ;

JsonVariant *json_variant_by_key(JsonVariant *v, const char *key) {
        return json_variant_by_key_full(v, key, ((void*)0));
}
