
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_error; } ;
typedef TYPE_1__ result_t ;
typedef int result_error_t ;



__attribute__((used)) static result_t result_error(result_error_t error) {
    result_t result = {
        .internal_error = error,
    };
    return result;
}
