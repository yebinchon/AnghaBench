
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cmsBool ;
struct TYPE_9__ {void* output_message; void* error_exit; } ;
struct TYPE_10__ {TYPE_2__ pub; } ;
struct TYPE_8__ {int err; } ;


 TYPE_1__ Decompressor ;
 TYPE_6__ ErrorHandler ;
 int FALSE ;
 int FatalError (char*,char const*) ;
 int * InFile ;
 scalar_t__ JPEG_APP0 ;
 int SEEK_SET ;
 int TRUE ;
 int * fopen (char const*,char*) ;
 int fseek (int *,int ,int ) ;
 int jpeg_create_decompress (TYPE_1__*) ;
 int jpeg_read_header (TYPE_1__*,int ) ;
 int jpeg_save_markers (TYPE_1__*,scalar_t__,int) ;
 int jpeg_std_error (TYPE_2__*) ;
 int jpeg_stdio_src (TYPE_1__*,int *) ;
 int lIsITUFax ;
 void* my_error_exit ;

__attribute__((used)) static
cmsBool OpenInput(const char* FileName)
{
    int m;

    lIsITUFax = FALSE;
    InFile = fopen(FileName, "rb");
    if (InFile == ((void*)0)) {
        FatalError("Cannot open '%s'", FileName);
    }


    Decompressor.err = jpeg_std_error(&ErrorHandler.pub);
    ErrorHandler.pub.error_exit = my_error_exit;
    ErrorHandler.pub.output_message = my_error_exit;

    jpeg_create_decompress(&Decompressor);
    jpeg_stdio_src(&Decompressor, InFile);

    for (m = 0; m < 16; m++)
        jpeg_save_markers(&Decompressor, JPEG_APP0 + m, 0xFFFF);



    fseek(InFile, 0, SEEK_SET);
    jpeg_read_header(&Decompressor, TRUE);

    return TRUE;
}
