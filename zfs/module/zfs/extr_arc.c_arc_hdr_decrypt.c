
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
typedef int spa_t ;
typedef int boolean_t ;
struct TYPE_21__ {scalar_t__ b_byteswap; int * b_pabd; } ;
struct TYPE_20__ {int b_rabd; int b_mac; int b_iv; int b_salt; int b_ot; } ;
struct TYPE_22__ {TYPE_2__ b_l1hdr; TYPE_1__ b_crypt_hdr; } ;
typedef TYPE_3__ arc_buf_hdr_t ;
typedef int abd_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 scalar_t__ DMU_BSWAP_NUMFUNCS ;
 int HDR_COMPRESSION_ENABLED (TYPE_3__*) ;
 int HDR_EMPTY_OR_LOCKED (TYPE_3__*) ;
 int HDR_ENCRYPTED (TYPE_3__*) ;
 scalar_t__ HDR_GET_COMPRESS (TYPE_3__*) ;
 int HDR_GET_LSIZE (TYPE_3__*) ;
 int HDR_GET_PSIZE (TYPE_3__*) ;
 scalar_t__ ZIO_COMPRESS_OFF ;
 void* abd_borrow_buf (int *,int ) ;
 int abd_copy (int *,int ,int ) ;
 int abd_return_buf (int *,void*,int ) ;
 int abd_return_buf_copy (int *,void*,int ) ;
 int arc_free_data_abd (TYPE_3__*,int *,int ,TYPE_3__*) ;
 int arc_free_data_buf (TYPE_3__*,int *,int ,TYPE_3__*) ;
 int * arc_get_data_abd (TYPE_3__*,int ,TYPE_3__*) ;
 int arc_hdr_alloc_abd (TYPE_3__*,int) ;
 int arc_hdr_free_abd (TYPE_3__*,int) ;
 int arc_hdr_size (TYPE_3__*) ;
 int spa_do_crypt_abd (int,int *,int const*,int ,int,int,int ,int ,int ,int ,int *,int ,int*) ;
 int zio_decompress_data (scalar_t__,int *,void*,int ,int ) ;

__attribute__((used)) static int
arc_hdr_decrypt(arc_buf_hdr_t *hdr, spa_t *spa, const zbookmark_phys_t *zb)
{
 int ret;
 abd_t *cabd = ((void*)0);
 void *tmp = ((void*)0);
 boolean_t no_crypt = B_FALSE;
 boolean_t bswap = (hdr->b_l1hdr.b_byteswap != DMU_BSWAP_NUMFUNCS);

 ASSERT(HDR_EMPTY_OR_LOCKED(hdr));
 ASSERT(HDR_ENCRYPTED(hdr));

 arc_hdr_alloc_abd(hdr, B_FALSE);

 ret = spa_do_crypt_abd(B_FALSE, spa, zb, hdr->b_crypt_hdr.b_ot,
     B_FALSE, bswap, hdr->b_crypt_hdr.b_salt, hdr->b_crypt_hdr.b_iv,
     hdr->b_crypt_hdr.b_mac, HDR_GET_PSIZE(hdr), hdr->b_l1hdr.b_pabd,
     hdr->b_crypt_hdr.b_rabd, &no_crypt);
 if (ret != 0)
  goto error;

 if (no_crypt) {
  abd_copy(hdr->b_l1hdr.b_pabd, hdr->b_crypt_hdr.b_rabd,
      HDR_GET_PSIZE(hdr));
 }






 if (HDR_GET_COMPRESS(hdr) != ZIO_COMPRESS_OFF &&
     !HDR_COMPRESSION_ENABLED(hdr)) {






  cabd = arc_get_data_abd(hdr, arc_hdr_size(hdr), hdr);
  tmp = abd_borrow_buf(cabd, arc_hdr_size(hdr));

  ret = zio_decompress_data(HDR_GET_COMPRESS(hdr),
      hdr->b_l1hdr.b_pabd, tmp, HDR_GET_PSIZE(hdr),
      HDR_GET_LSIZE(hdr));
  if (ret != 0) {
   abd_return_buf(cabd, tmp, arc_hdr_size(hdr));
   goto error;
  }

  abd_return_buf_copy(cabd, tmp, arc_hdr_size(hdr));
  arc_free_data_abd(hdr, hdr->b_l1hdr.b_pabd,
      arc_hdr_size(hdr), hdr);
  hdr->b_l1hdr.b_pabd = cabd;
 }

 return (0);

error:
 arc_hdr_free_abd(hdr, B_FALSE);
 if (cabd != ((void*)0))
  arc_free_data_buf(hdr, cabd, arc_hdr_size(hdr), hdr);

 return (ret);
}
