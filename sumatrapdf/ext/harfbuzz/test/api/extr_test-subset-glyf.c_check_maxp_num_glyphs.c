
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int hb_face_t ;
typedef int hb_blob_t ;


 int HB_TAG (char,char,char,char) ;
 int check_maxp_field (int *,int,int) ;
 int hb_blob_destroy (int *) ;
 scalar_t__ hb_blob_get_data (int *,unsigned int*) ;
 int * hb_face_reference_table (int *,int ) ;

__attribute__((used)) static void check_maxp_num_glyphs (hb_face_t *face, uint16_t expected_num_glyphs, bool hints)
{
  hb_blob_t *maxp_blob = hb_face_reference_table (face, HB_TAG ('m','a','x', 'p'));

  unsigned int maxp_len;
  uint8_t *raw_maxp = (uint8_t *) hb_blob_get_data(maxp_blob, &maxp_len);

  check_maxp_field (raw_maxp, 4, expected_num_glyphs);
  if (!hints)
  {
    check_maxp_field (raw_maxp, 14, 1);
    check_maxp_field (raw_maxp, 16, 0);
    check_maxp_field (raw_maxp, 18, 0);
    check_maxp_field (raw_maxp, 20, 0);
    check_maxp_field (raw_maxp, 22, 0);
    check_maxp_field (raw_maxp, 24, 0);
    check_maxp_field (raw_maxp, 26, 0);
  }

  hb_blob_destroy (maxp_blob);
}
