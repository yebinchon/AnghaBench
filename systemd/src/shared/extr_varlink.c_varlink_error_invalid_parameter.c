
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Varlink ;
typedef int JsonVariant ;


 int EINVAL ;
 int VARLINK_ERROR_INVALID_PARAMETER ;
 int assert_return (int *,int) ;
 int * json_variant_by_index (int *,int ) ;
 scalar_t__ json_variant_elements (int *) ;
 scalar_t__ json_variant_is_object (int *) ;
 scalar_t__ json_variant_is_string (int *) ;
 int varlink_error (int *,int ,int *) ;

int varlink_error_invalid_parameter(Varlink *v, JsonVariant *parameters) {

        assert_return(v, -EINVAL);
        assert_return(parameters, -EINVAL);






        if (json_variant_is_string(parameters))
                return varlink_error(v, VARLINK_ERROR_INVALID_PARAMETER, parameters);

        if (json_variant_is_object(parameters) &&
            json_variant_elements(parameters) > 0)
                return varlink_error(v, VARLINK_ERROR_INVALID_PARAMETER,
                                     json_variant_by_index(parameters, 0));

        return -EINVAL;
}
