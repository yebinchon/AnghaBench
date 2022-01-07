
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 int JSON_VARIANT_NUMBER ;
 int json_variant_has_type (int *,int ) ;

__attribute__((used)) static inline bool json_variant_is_number(JsonVariant *v) {
        return json_variant_has_type(v, JSON_VARIANT_NUMBER);
}
