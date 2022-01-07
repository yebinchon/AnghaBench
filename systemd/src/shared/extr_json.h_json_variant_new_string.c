
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 int json_variant_new_stringn (int **,char const*,size_t) ;

__attribute__((used)) static inline int json_variant_new_string(JsonVariant **ret, const char *s) {
        return json_variant_new_stringn(ret, s, (size_t) -1);
}
