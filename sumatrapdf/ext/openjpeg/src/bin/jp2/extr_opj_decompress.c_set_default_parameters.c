
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int decod_format; int cod_format; int core; } ;
typedef TYPE_1__ opj_decompress_parameters ;


 int memset (TYPE_1__*,int ,int) ;
 int opj_set_default_decoder_parameters (int *) ;

__attribute__((used)) static void set_default_parameters(opj_decompress_parameters* parameters)
{
    if (parameters) {
        memset(parameters, 0, sizeof(opj_decompress_parameters));


        parameters->decod_format = -1;
        parameters->cod_format = -1;


        opj_set_default_decoder_parameters(&(parameters->core));
    }
}
