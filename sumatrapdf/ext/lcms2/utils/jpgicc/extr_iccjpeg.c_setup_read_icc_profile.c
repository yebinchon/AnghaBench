
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_decompress_ptr ;


 int ICC_MARKER ;
 int jpeg_save_markers (int ,int ,int) ;

void
setup_read_icc_profile (j_decompress_ptr cinfo)
{

  jpeg_save_markers(cinfo, ICC_MARKER, 0xFFFF);
}
