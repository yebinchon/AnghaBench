#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char uint32_t ;
struct rfb_softc {int cfd; int /*<<< orphan*/  zstream; scalar_t__ enc_zlib_ok; int /*<<< orphan*/ * zbuf; scalar_t__ password; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/ * pthread_t ;
typedef  int /*<<< orphan*/  challenge ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  CCCryptorStatus ;

/* Variables and functions */
 int AUTH_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *,unsigned char*,int,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PASSWD_LENGTH ; 
 scalar_t__ RFB_ZLIB_BUFSZ ; 
#define  SECURITY_TYPE_NONE 129 
#define  SECURITY_TYPE_VNC_AUTH 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char FUNC7 (int) ; 
 int /*<<< orphan*/  kCCAlgorithmDES ; 
 int /*<<< orphan*/  kCCEncrypt ; 
 int /*<<< orphan*/  kCCOptionECBMode ; 
 int /*<<< orphan*/  kCCSuccess ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rfb_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC13 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct rfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct rfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct rfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct rfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct rfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct rfb_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct rfb_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  rfb_wr_thr ; 
 long FUNC22 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int,...) ; 
 scalar_t__ FUNC24 (char const*) ; 
 int /*<<< orphan*/  FUNC25 (char*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC26(struct rfb_softc *rc, int cfd)
{
	const char *vbuf = "RFB 003.008\n";
	unsigned char buf[80];
	char *message = NULL;

	unsigned char challenge[AUTH_LENGTH];
	unsigned char keystr[PASSWD_LENGTH];
	unsigned char crypt_expected[AUTH_LENGTH];

    size_t dataOutSize;
    int i;
    CCCryptorStatus cryptoResult;

	pthread_t tid = NULL;
	uint32_t sres = 0;
	long len;
	int perror = 1;

	rc->cfd = cfd;

	/* 1a. Send server version */
	FUNC23(cfd, vbuf, (ssize_t)FUNC24(vbuf));

	/* 1b. Read client version */
	len = FUNC13(cfd, buf, sizeof(buf));

	/* 2a. Send security type */
	buf[0] = 1;
	if (rc->password)
		buf[1] = SECURITY_TYPE_VNC_AUTH;
	else
		buf[1] = SECURITY_TYPE_NONE;

	FUNC23(cfd, buf, 2);

	/* 2b. Read agreed security type */
	len = FUNC22(cfd, buf, 1);

	/* 2c. Do VNC authentication */
	switch (buf[0]) {
	case SECURITY_TYPE_NONE:
		sres = 0;
		break;
	case SECURITY_TYPE_VNC_AUTH:
		/*
		 * The client encrypts the challenge with DES, using a password
		 * supplied by the user as the key.
		 * To form the key, the password is truncated to
		 * eight characters, or padded with null bytes on the right.
		 * The client then sends the resulting 16-bytes response.
		 */
		FUNC25((char *)keystr, rc->password, PASSWD_LENGTH);

		/* VNC clients encrypts the challenge with all the bit fields
		 * in each byte of the password mirrored.
		 * Here we flip each byte of the keystr.
		 */
		for (i = 0; i < PASSWD_LENGTH; i++) {
			keystr[i] = (keystr[i] & 0xF0) >> 4
				  | (unsigned char)((keystr[i] & 0x0F) << 4);
			keystr[i] = (keystr[i] & 0xCC) >> 2
				  | (unsigned char)((keystr[i] & 0x33) << 2);
			keystr[i] = (keystr[i] & 0xAA) >> 1
				  | (unsigned char)((keystr[i] & 0x55) << 1);
		}

		/* Initialize a 16-byte random challenge */
		FUNC3(challenge, sizeof(challenge));
		FUNC23(cfd, challenge, AUTH_LENGTH);

		/* Receive the 16-byte challenge response */
		FUNC22(cfd, buf, AUTH_LENGTH);

		FUNC10(crypt_expected, challenge, AUTH_LENGTH);

        cryptoResult = FUNC0(kCCEncrypt, kCCAlgorithmDES, kCCOptionECBMode,
                               keystr, PASSWD_LENGTH,
                               NULL,
                               challenge, AUTH_LENGTH,
                               crypt_expected, AUTH_LENGTH,
                               &dataOutSize);

        if (cryptoResult != kCCSuccess) {
            message = "Auth Failed: Internal Error.";
            sres = FUNC7(1);
        } else if (FUNC9(crypt_expected, buf, AUTH_LENGTH) != 0) {
			message = "Auth Failed: Invalid Password.";
			sres = FUNC7(1);
        } else {
			sres = 0;
        }
        break;
	}

	/* 2d. Write back a status */
	FUNC23(cfd, &sres, 4);

	if (sres) {
		FUNC5(buf, (uint32_t)FUNC24(message));
		FUNC23(cfd, buf, 4);
		FUNC23(cfd, message, (ssize_t)FUNC24(message));
		goto done;
	}

	/* 3a. Read client shared-flag byte */
	len = FUNC22(cfd, buf, 1);

	/* 4a. Write server-init info */
	FUNC21(cfd);

	if (!rc->zbuf) {
		rc->zbuf = FUNC8(RFB_ZLIB_BUFSZ + 16);
		FUNC4(rc->zbuf != NULL);
	}

	FUNC20(rc, cfd, 1);

	perror = FUNC11(&tid, NULL, rfb_wr_thr, rc);
    if (perror != 0) {
        goto done;
    }

        /* Now read in client requests. 1st byte identifies type */
	for (;;) {
		len = FUNC13(cfd, buf, 1);
		if (len <= 0) {
			FUNC1(("rfb client exiting\r\n"));
			break;
		}

		switch (buf[0]) {
		case 0:
			FUNC18(rc, cfd);
			break;
		case 2:
			FUNC17(rc, cfd);
			break;
		case 3:
			FUNC19(rc, cfd, 1);
			break;
		case 4:
			FUNC15(rc, cfd);
			break;
		case 5:
			FUNC16(rc, cfd);
			break;
		case 6:
			FUNC14(rc, cfd);
			break;
		default:
			FUNC2(("rfb unknown cli-code %d!\n", buf[0] & 0xff));
			goto done;
		}
	}
done:
	rc->cfd = -1;
	if (perror == 0)
		FUNC12(tid, NULL);
	if (rc->enc_zlib_ok)
		FUNC6(&rc->zstream);
}