
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsBool ;
struct TYPE_7__ {void* output_message; void* error_exit; } ;
struct TYPE_8__ {TYPE_2__ pub; } ;
struct TYPE_6__ {int input_components; int num_components; int err; } ;


 TYPE_1__ Compressor ;
 TYPE_4__ ErrorHandler ;
 int FatalError (char*,char const*) ;
 int * OutFile ;
 int TRUE ;
 int * fopen (char const*,char*) ;
 int jpeg_create_compress (TYPE_1__*) ;
 int jpeg_std_error (TYPE_2__*) ;
 int jpeg_stdio_dest (TYPE_1__*,int *) ;
 void* my_error_exit ;

__attribute__((used)) static
cmsBool OpenOutput(const char* FileName)
{

    OutFile = fopen(FileName, "wb");
    if (OutFile == ((void*)0)) {
        FatalError("Cannot create '%s'", FileName);

    }

    Compressor.err = jpeg_std_error(&ErrorHandler.pub);
    ErrorHandler.pub.error_exit = my_error_exit;
    ErrorHandler.pub.output_message = my_error_exit;

    Compressor.input_components = Compressor.num_components = 4;

    jpeg_create_compress(&Compressor);
    jpeg_stdio_dest(&Compressor, OutFile);
    return TRUE;
}
