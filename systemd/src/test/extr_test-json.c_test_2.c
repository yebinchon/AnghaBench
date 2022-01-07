
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 scalar_t__ JSON_VARIANT_ARRAY ;
 int JSON_VARIANT_INTEGER ;
 scalar_t__ JSON_VARIANT_NULL ;
 scalar_t__ JSON_VARIANT_OBJECT ;
 scalar_t__ JSON_VARIANT_REAL ;
 scalar_t__ JSON_VARIANT_STRING ;
 scalar_t__ JSON_VARIANT_UNSIGNED ;
 int assert_se (int) ;
 double fabsl (scalar_t__) ;
 int * json_variant_by_index (int *,int) ;
 int * json_variant_by_key (int *,char*) ;
 int json_variant_elements (int *) ;
 scalar_t__ json_variant_has_type (int *,int ) ;
 int json_variant_integer (int *) ;
 scalar_t__ json_variant_real (int *) ;
 int json_variant_string (int *) ;
 scalar_t__ json_variant_type (int *) ;
 int json_variant_unsigned (int *) ;
 scalar_t__ streq (int ,char*) ;

__attribute__((used)) static void test_2(JsonVariant *v) {
        JsonVariant *p, *q;


        assert_se(json_variant_elements(v) == 4);


        p = json_variant_by_key(v, "mutant");
        assert_se(p && json_variant_type(p) == JSON_VARIANT_ARRAY && json_variant_elements(p) == 4);


        q = json_variant_by_index(p, 0);
        assert_se(q && json_variant_type(q) == JSON_VARIANT_UNSIGNED && json_variant_unsigned(q) == 1);
        assert_se(q && json_variant_has_type(q, JSON_VARIANT_INTEGER) && json_variant_integer(q) == 1);


        q = json_variant_by_index(p, 1);
        assert_se(q && json_variant_type(q) == JSON_VARIANT_NULL);


        q = json_variant_by_index(p, 2);
        assert_se(q && json_variant_type(q) == JSON_VARIANT_STRING && streq(json_variant_string(q), "1"));


        q = json_variant_by_index(p, 3);
        assert_se(q && json_variant_type(q) == JSON_VARIANT_OBJECT && json_variant_elements(q) == 2);


        p = json_variant_by_key(q, "1");
        assert_se(p && json_variant_type(p) == JSON_VARIANT_ARRAY && json_variant_elements(p) == 2);


        q = json_variant_by_index(p, 0);
        assert_se(q && json_variant_type(q) == JSON_VARIANT_UNSIGNED && json_variant_unsigned(q) == 1);
        assert_se(q && json_variant_has_type(q, JSON_VARIANT_INTEGER) && json_variant_integer(q) == 1);


        q = json_variant_by_index(p, 1);
        assert_se(q && json_variant_type(q) == JSON_VARIANT_STRING && streq(json_variant_string(q), "1"));


        p = json_variant_by_key(v, "thisisaverylongproperty");
        assert_se(p && json_variant_type(p) == JSON_VARIANT_REAL && fabsl(json_variant_real(p) - 1.27) < 0.001);
}
