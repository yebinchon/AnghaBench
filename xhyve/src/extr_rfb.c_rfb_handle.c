
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint32_t ;
struct rfb_softc {int cfd; int zstream; scalar_t__ enc_zlib_ok; int * zbuf; scalar_t__ password; } ;
typedef int ssize_t ;
typedef int * pthread_t ;
typedef int challenge ;
typedef int buf ;
typedef int CCCryptorStatus ;


 int AUTH_LENGTH ;
 int CCCrypt (int ,int ,int ,unsigned char*,int,int *,unsigned char*,int,unsigned char*,int,size_t*) ;
 int DPRINTF (char*) ;
 int PASSWD_LENGTH ;
 scalar_t__ RFB_ZLIB_BUFSZ ;


 int WPRINTF (char*) ;
 int arc4random_buf (unsigned char*,int) ;
 int assert (int ) ;
 int be32enc (unsigned char*,char) ;
 int deflateEnd (int *) ;
 char htonl (int) ;
 int kCCAlgorithmDES ;
 int kCCEncrypt ;
 int kCCOptionECBMode ;
 int kCCSuccess ;
 int * malloc (scalar_t__) ;
 int memcmp (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int pthread_create (int **,int *,int ,struct rfb_softc*) ;
 int pthread_join (int *,int *) ;
 long read (int,unsigned char*,int) ;
 int rfb_recv_cuttext_msg (struct rfb_softc*,int) ;
 int rfb_recv_key_msg (struct rfb_softc*,int) ;
 int rfb_recv_ptr_msg (struct rfb_softc*,int) ;
 int rfb_recv_set_encodings_msg (struct rfb_softc*,int) ;
 int rfb_recv_set_pixfmt_msg (struct rfb_softc*,int) ;
 int rfb_recv_update_msg (struct rfb_softc*,int,int) ;
 int rfb_send_screen (struct rfb_softc*,int,int) ;
 int rfb_send_server_init_msg (int) ;
 int rfb_wr_thr ;
 long stream_read (int,unsigned char*,int) ;
 int stream_write (int,...) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char*,scalar_t__,int) ;

__attribute__((used)) static void
rfb_handle(struct rfb_softc *rc, int cfd)
{
 const char *vbuf = "RFB 003.008\n";
 unsigned char buf[80];
 char *message = ((void*)0);

 unsigned char challenge[AUTH_LENGTH];
 unsigned char keystr[PASSWD_LENGTH];
 unsigned char crypt_expected[AUTH_LENGTH];

    size_t dataOutSize;
    int i;
    CCCryptorStatus cryptoResult;

 pthread_t tid = ((void*)0);
 uint32_t sres = 0;
 long len;
 int perror = 1;

 rc->cfd = cfd;


 stream_write(cfd, vbuf, (ssize_t)strlen(vbuf));


 len = read(cfd, buf, sizeof(buf));


 buf[0] = 1;
 if (rc->password)
  buf[1] = 128;
 else
  buf[1] = 129;

 stream_write(cfd, buf, 2);


 len = stream_read(cfd, buf, 1);


 switch (buf[0]) {
 case 129:
  sres = 0;
  break;
 case 128:







  strncpy((char *)keystr, rc->password, PASSWD_LENGTH);





  for (i = 0; i < PASSWD_LENGTH; i++) {
   keystr[i] = (keystr[i] & 0xF0) >> 4
      | (unsigned char)((keystr[i] & 0x0F) << 4);
   keystr[i] = (keystr[i] & 0xCC) >> 2
      | (unsigned char)((keystr[i] & 0x33) << 2);
   keystr[i] = (keystr[i] & 0xAA) >> 1
      | (unsigned char)((keystr[i] & 0x55) << 1);
  }


  arc4random_buf(challenge, sizeof(challenge));
  stream_write(cfd, challenge, AUTH_LENGTH);


  stream_read(cfd, buf, AUTH_LENGTH);

  memcpy(crypt_expected, challenge, AUTH_LENGTH);

        cryptoResult = CCCrypt(kCCEncrypt, kCCAlgorithmDES, kCCOptionECBMode,
                               keystr, PASSWD_LENGTH,
                               ((void*)0),
                               challenge, AUTH_LENGTH,
                               crypt_expected, AUTH_LENGTH,
                               &dataOutSize);

        if (cryptoResult != kCCSuccess) {
            message = "Auth Failed: Internal Error.";
            sres = htonl(1);
        } else if (memcmp(crypt_expected, buf, AUTH_LENGTH) != 0) {
   message = "Auth Failed: Invalid Password.";
   sres = htonl(1);
        } else {
   sres = 0;
        }
        break;
 }


 stream_write(cfd, &sres, 4);

 if (sres) {
  be32enc(buf, (uint32_t)strlen(message));
  stream_write(cfd, buf, 4);
  stream_write(cfd, message, (ssize_t)strlen(message));
  goto done;
 }


 len = stream_read(cfd, buf, 1);


 rfb_send_server_init_msg(cfd);

 if (!rc->zbuf) {
  rc->zbuf = malloc(RFB_ZLIB_BUFSZ + 16);
  assert(rc->zbuf != ((void*)0));
 }

 rfb_send_screen(rc, cfd, 1);

 perror = pthread_create(&tid, ((void*)0), rfb_wr_thr, rc);
    if (perror != 0) {
        goto done;
    }


 for (;;) {
  len = read(cfd, buf, 1);
  if (len <= 0) {
   DPRINTF(("rfb client exiting\r\n"));
   break;
  }

  switch (buf[0]) {
  case 0:
   rfb_recv_set_pixfmt_msg(rc, cfd);
   break;
  case 2:
   rfb_recv_set_encodings_msg(rc, cfd);
   break;
  case 3:
   rfb_recv_update_msg(rc, cfd, 1);
   break;
  case 4:
   rfb_recv_key_msg(rc, cfd);
   break;
  case 5:
   rfb_recv_ptr_msg(rc, cfd);
   break;
  case 6:
   rfb_recv_cuttext_msg(rc, cfd);
   break;
  default:
   WPRINTF(("rfb unknown cli-code %d!\n", buf[0] & 0xff));
   goto done;
  }
 }
done:
 rc->cfd = -1;
 if (perror == 0)
  pthread_join(tid, ((void*)0));
 if (rc->enc_zlib_ok)
  deflateEnd(&rc->zstream);
}
