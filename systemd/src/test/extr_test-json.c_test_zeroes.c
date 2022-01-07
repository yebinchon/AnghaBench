
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 int * IN_SET (int ,int ,int ,int ) ;
 int JSON_VARIANT_INTEGER ;
 int JSON_VARIANT_REAL ;
 int JSON_VARIANT_UNSIGNED ;
 int assert_se (int) ;
 int * json_variant_by_index (int *,size_t) ;
 size_t json_variant_elements (int *) ;
 int * json_variant_equal (int *,int *) ;
 scalar_t__ json_variant_integer (int *) ;
 int * json_variant_is_integer (int *) ;
 int json_variant_is_negative (int *) ;
 int * json_variant_is_number (int *) ;
 int * json_variant_is_real (int *) ;
 int * json_variant_is_unsigned (int *) ;
 long double json_variant_real (int *) ;
 int json_variant_type (int *) ;
 unsigned int json_variant_unsigned (int *) ;

__attribute__((used)) static void test_zeroes(JsonVariant *v) {
        size_t i;



        assert_se(json_variant_elements(v) == 13);

        for (i = 0; i < json_variant_elements(v); i++) {
                JsonVariant *w;
                size_t j;

                assert_se(w = json_variant_by_index(v, i));

                assert_se(json_variant_integer(w) == 0);
                assert_se(json_variant_unsigned(w) == 0U);

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wfloat-equal"
 assert_se(json_variant_real(w) == 0.0L);
#pragma GCC diagnostic pop

 assert_se(json_variant_is_integer(w));
                assert_se(json_variant_is_unsigned(w));
                assert_se(json_variant_is_real(w));
                assert_se(json_variant_is_number(w));

                assert_se(!json_variant_is_negative(w));

                assert_se(IN_SET(json_variant_type(w), JSON_VARIANT_INTEGER, JSON_VARIANT_UNSIGNED, JSON_VARIANT_REAL));

                for (j = 0; j < json_variant_elements(v); j++) {
                        JsonVariant *q;

                        assert_se(q = json_variant_by_index(v, j));

                        assert_se(json_variant_equal(w, q));
                }
        }
}
