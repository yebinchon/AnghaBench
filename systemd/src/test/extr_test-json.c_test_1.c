
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 scalar_t__ JSON_VARIANT_ARRAY ;
 int JSON_VARIANT_INTEGER ;
 scalar_t__ JSON_VARIANT_NULL ;
 scalar_t__ JSON_VARIANT_OBJECT ;
 scalar_t__ JSON_VARIANT_STRING ;
 scalar_t__ JSON_VARIANT_UNSIGNED ;
 int assert_se (int) ;
 int * json_variant_by_index (int *,unsigned int) ;
 int * json_variant_by_key (int *,char*) ;
 int json_variant_elements (int *) ;
 scalar_t__ json_variant_has_type (int *,int ) ;
 unsigned int json_variant_integer (int *) ;
 int json_variant_string (int *) ;
 scalar_t__ json_variant_type (int *) ;
 unsigned int json_variant_unsigned (int *) ;
 int streq (int ,char*) ;

__attribute__((used)) static void test_1(JsonVariant *v) {
        JsonVariant *p, *q;
        unsigned i;


        assert_se(json_variant_elements(v) == 6);


        p = json_variant_by_key(v, "k");
        assert_se(p && json_variant_type(p) == JSON_VARIANT_STRING);


        assert_se(streq(json_variant_string(p), "v"));


        p = json_variant_by_key(v, "foo");
        assert_se(p && json_variant_type(p) == JSON_VARIANT_ARRAY && json_variant_elements(p) == 3);


        for (i = 0; i < 3; ++i) {
                q = json_variant_by_index(p, i);
                assert_se(q && json_variant_type(q) == JSON_VARIANT_UNSIGNED && json_variant_unsigned(q) == (i+1));
                assert_se(q && json_variant_has_type(q, JSON_VARIANT_INTEGER) && json_variant_integer(q) == (i+1));
        }


        p = json_variant_by_key(v, "bar");
        assert_se(p && json_variant_type(p) == JSON_VARIANT_OBJECT && json_variant_elements(p) == 2);


        q = json_variant_by_key(p, "zap");
        assert_se(q && json_variant_type(q) == JSON_VARIANT_NULL);
}
