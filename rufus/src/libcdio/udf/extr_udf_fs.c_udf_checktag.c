
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ id; int cksum; } ;
typedef TYPE_1__ udf_tag_t ;
typedef scalar_t__ udf_Uint16_t ;


 scalar_t__ UINT16_SWAP_LE_BE (scalar_t__) ;

int
udf_checktag(const udf_tag_t *p_tag, udf_Uint16_t tag_id)
{
  uint8_t *itag;
  uint8_t i;
  uint8_t cksum = 0;

  itag = (uint8_t *)p_tag;





  if (p_tag->id != tag_id)
    return -1;

  for (i = 0; i < 15; i++)
    cksum = cksum + itag[i];
  cksum = cksum - itag[4];

  if (cksum == p_tag->cksum)
    return 0;

  return -1;
}
