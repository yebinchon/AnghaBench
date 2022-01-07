
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;





 int * JSON_VARIANT_MAGIC_EMPTY_ARRAY ;
 int * JSON_VARIANT_MAGIC_EMPTY_OBJECT ;
 int * JSON_VARIANT_MAGIC_EMPTY_STRING ;
 int * JSON_VARIANT_MAGIC_FALSE ;
 int * JSON_VARIANT_MAGIC_NULL ;
 int * JSON_VARIANT_MAGIC_TRUE ;
 int * JSON_VARIANT_MAGIC_ZERO_INTEGER ;
 int * JSON_VARIANT_MAGIC_ZERO_REAL ;
 int * JSON_VARIANT_MAGIC_ZERO_UNSIGNED ;





 int isempty (int ) ;
 int json_variant_boolean (int *) ;
 int * json_variant_dereference (int *) ;
 int json_variant_elements (int *) ;
 int json_variant_integer (int *) ;
 double json_variant_real (int *) ;
 int json_variant_string (int *) ;
 int json_variant_type (int *) ;
 int json_variant_unsigned (int *) ;

__attribute__((used)) static JsonVariant *json_variant_normalize(JsonVariant *v) {




        if (!v)
                return ((void*)0);

        v = json_variant_dereference(v);

        switch (json_variant_type(v)) {

        case 134:
                return json_variant_boolean(v) ? JSON_VARIANT_MAGIC_TRUE : JSON_VARIANT_MAGIC_FALSE;

        case 132:
                return JSON_VARIANT_MAGIC_NULL;

        case 133:
                return json_variant_integer(v) == 0 ? JSON_VARIANT_MAGIC_ZERO_INTEGER : v;

        case 128:
                return json_variant_unsigned(v) == 0 ? JSON_VARIANT_MAGIC_ZERO_UNSIGNED : v;

        case 130:
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wfloat-equal"
 return json_variant_real(v) == 0.0 ? JSON_VARIANT_MAGIC_ZERO_REAL : v;
#pragma GCC diagnostic pop

 case 129:
                return isempty(json_variant_string(v)) ? JSON_VARIANT_MAGIC_EMPTY_STRING : v;

        case 135:
                return json_variant_elements(v) == 0 ? JSON_VARIANT_MAGIC_EMPTY_ARRAY : v;

        case 131:
                return json_variant_elements(v) == 0 ? JSON_VARIANT_MAGIC_EMPTY_OBJECT : v;

        default:
                return v;
        }
}
