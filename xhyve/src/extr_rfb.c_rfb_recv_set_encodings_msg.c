
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rfb_softc {int enc_raw_ok; int enc_zlib_ok; int enc_resize_ok; int zstream; } ;
struct rfb_enc_msg {int numencs; } ;
typedef int encoding ;
typedef int enc_msg ;





 int Z_BEST_SPEED ;
 int assert (int) ;
 int deflateInit (int *,int ) ;
 int htonl (int ) ;
 int htons (int ) ;
 int stream_read (int,int *,int) ;

__attribute__((used)) static void
rfb_recv_set_encodings_msg(struct rfb_softc *rc, int cfd)
{
 struct rfb_enc_msg enc_msg;
 int i;
 uint32_t encoding;

 assert((sizeof(enc_msg) - 1) == 3);
 (void)stream_read(cfd, ((uint8_t *)&enc_msg)+1, sizeof(enc_msg)-1);

 for (i = 0; i < htons(enc_msg.numencs); i++) {
  (void)stream_read(cfd, &encoding, sizeof(encoding));
  switch (htonl(encoding)) {
  case 130:
   rc->enc_raw_ok = 1;
   break;
  case 128:
   rc->enc_zlib_ok = 1;
   deflateInit(&rc->zstream, Z_BEST_SPEED);
   break;
  case 129:
   rc->enc_resize_ok = 1;
   break;
  }
 }
}
