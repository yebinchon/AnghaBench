
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** JsonVariant ;
typedef int JsonDispatchFlags ;


 int assert (int ******) ;
 int ******* json_variant_ref (int *****) ;
 int json_variant_unref (int *****) ;

int json_dispatch_variant(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        JsonVariant **p = userdata;

        assert(variant);
        assert(p);

        json_variant_unref(*p);
        *p = json_variant_ref(variant);

        return 0;
}
