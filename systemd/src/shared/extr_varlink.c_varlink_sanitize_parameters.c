
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 int EINVAL ;
 int assert (int **) ;
 int json_variant_is_object (int *) ;
 int json_variant_new_object (int **,int *,int ) ;

__attribute__((used)) static int varlink_sanitize_parameters(JsonVariant **v) {
        assert(v);


        if (!*v)
                return json_variant_new_object(v, ((void*)0), 0);
        else if (!json_variant_is_object(*v))
                return -EINVAL;

        return 0;
}
