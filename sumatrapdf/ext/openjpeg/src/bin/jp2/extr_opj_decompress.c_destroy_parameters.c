
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * comps_indices; int * precision; } ;
typedef TYPE_1__ opj_decompress_parameters ;


 int free (int *) ;

__attribute__((used)) static void destroy_parameters(opj_decompress_parameters* parameters)
{
    if (parameters) {
        if (parameters->precision) {
            free(parameters->precision);
            parameters->precision = ((void*)0);
        }

        free(parameters->comps_indices);
        parameters->comps_indices = ((void*)0);
    }
}
