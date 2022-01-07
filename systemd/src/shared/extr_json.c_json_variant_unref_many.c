
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 int assert (int ) ;
 int json_variant_unref (int *) ;

void json_variant_unref_many(JsonVariant **array, size_t n) {
        size_t i;

        assert(array || n == 0);

        for (i = 0; i < n; i++)
                json_variant_unref(array[i]);
}
