
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_compress_ptr ;


 scalar_t__ JPEG_APP0 ;
 int jpeg_write_marker (int ,scalar_t__,unsigned char*,int) ;

__attribute__((used)) static
void SetITUFax(j_compress_ptr cinfo)
{
    unsigned char Marker[] = "G3FAX\x00\0x07\xCA\x00\xC8";

    jpeg_write_marker(cinfo, (JPEG_APP0 + 1), Marker, 10);
}
