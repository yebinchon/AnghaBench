
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_compress_ptr ;
typedef int JOCTET ;


 int ICC_MARKER ;
 scalar_t__ ICC_OVERHEAD_LEN ;
 unsigned int MAX_DATA_BYTES_IN_MARKER ;
 int jpeg_write_m_byte (int ,int const) ;
 int jpeg_write_m_header (int ,int ,unsigned int) ;

void
write_icc_profile (j_compress_ptr cinfo,
     const JOCTET *icc_data_ptr,
     unsigned int icc_data_len)
{
  unsigned int num_markers;
  int cur_marker = 1;
  unsigned int length;


  num_markers = icc_data_len / MAX_DATA_BYTES_IN_MARKER;
  if (num_markers * MAX_DATA_BYTES_IN_MARKER != icc_data_len)
    num_markers++;

  while (icc_data_len > 0) {

    length = icc_data_len;
    if (length > MAX_DATA_BYTES_IN_MARKER)
      length = MAX_DATA_BYTES_IN_MARKER;
    icc_data_len -= length;


    jpeg_write_m_header(cinfo, ICC_MARKER,
   (unsigned int) (length + ICC_OVERHEAD_LEN));





    jpeg_write_m_byte(cinfo, 0x49);
    jpeg_write_m_byte(cinfo, 0x43);
    jpeg_write_m_byte(cinfo, 0x43);
    jpeg_write_m_byte(cinfo, 0x5F);
    jpeg_write_m_byte(cinfo, 0x50);
    jpeg_write_m_byte(cinfo, 0x52);
    jpeg_write_m_byte(cinfo, 0x4F);
    jpeg_write_m_byte(cinfo, 0x46);
    jpeg_write_m_byte(cinfo, 0x49);
    jpeg_write_m_byte(cinfo, 0x4C);
    jpeg_write_m_byte(cinfo, 0x45);
    jpeg_write_m_byte(cinfo, 0x0);


    jpeg_write_m_byte(cinfo, cur_marker);
    jpeg_write_m_byte(cinfo, (int) num_markers);


    while (length--) {
      jpeg_write_m_byte(cinfo, *icc_data_ptr);
      icc_data_ptr++;
    }
    cur_marker++;
  }
}
