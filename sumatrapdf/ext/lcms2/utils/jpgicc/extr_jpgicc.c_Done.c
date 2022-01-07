
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsBool ;


 int Compressor ;
 int Decompressor ;
 int InFile ;
 int OutFile ;
 scalar_t__ fclose (int ) ;
 int jpeg_destroy_compress (int *) ;
 int jpeg_destroy_decompress (int *) ;

__attribute__((used)) static
cmsBool Done(void)
{
    jpeg_destroy_decompress(&Decompressor);
    jpeg_destroy_compress(&Compressor);
    return fclose(InFile) + fclose(OutFile);

}
