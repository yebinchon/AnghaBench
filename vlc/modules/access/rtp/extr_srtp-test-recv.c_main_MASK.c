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
typedef  unsigned int uint8_t ;
typedef  int /*<<< orphan*/  srtp_session_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  SRTP_AUTH_HMAC_SHA1 ; 
 int /*<<< orphan*/  SRTP_ENCR_AES_CM ; 
 int /*<<< orphan*/  SRTP_PRF_AES_CM ; 
 int /*<<< orphan*/  SRTP_RCC_MODE1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int*,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int*,size_t*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10 (void)
{
    static const char key[] =
        "123456789ABCDEF0" "123456789ABCDEF0";
    static const char salt[] =
        "1234567890" "1234567890" "12345678";
    int val;
    srtp_session_t *sd, *se;

    /* Too big tag length */
    se = FUNC4 (SRTP_ENCR_AES_CM, SRTP_AUTH_HMAC_SHA1, 21,
                      SRTP_PRF_AES_CM, 0);
    FUNC0 (se == NULL);

    /* Too short tag length */
    se = FUNC4 (SRTP_ENCR_AES_CM, SRTP_AUTH_HMAC_SHA1, 3,
                      SRTP_PRF_AES_CM, SRTP_RCC_MODE1);
    FUNC0 (se == NULL);

    /* Initializes encryption and decryption contexts */
    se = FUNC4 (SRTP_ENCR_AES_CM, SRTP_AUTH_HMAC_SHA1, 20,
                      SRTP_PRF_AES_CM, SRTP_RCC_MODE1);
    FUNC0 (se != NULL);

    sd = FUNC4 (SRTP_ENCR_AES_CM, SRTP_AUTH_HMAC_SHA1, 20,
                      SRTP_PRF_AES_CM, SRTP_RCC_MODE1);
    FUNC0 (sd != NULL);

    FUNC9 (se, 1);
    FUNC9 (sd, 1);

    val = FUNC8 (se, key, salt);
    FUNC0 (val == 0);
    val = FUNC8 (sd, key, salt);
    FUNC0 (val == 0);

    uint8_t buf[1500], buf2[1500];
    size_t len;

    /* Invalid SRTP packet */
    len = 12;
    FUNC3 (buf, 0, len);
    val = FUNC7 (se, buf, &len, sizeof (buf));
    FUNC0 (val == EINVAL);

    len = 32;
    FUNC3 (buf, 0, len);
    FUNC6 (sd, buf, &len);
    FUNC0 (val == EINVAL);

    /* Too short packet */
    len = 11;
    buf[0] = 0x80;
    val = FUNC7 (se, buf, &len, sizeof (buf));
    FUNC0 (val == EINVAL);

    len = 11;
    val = FUNC6 (sd, buf, &len);
    FUNC0 (val == EINVAL);

    /* Too short when taking tag into account */
    len = 31;
    val = FUNC6 (sd, buf, &len);
    FUNC0 (val == EINVAL);

    /* Too short when taking RTP extensions into account */
    len = 15;
    buf[0] = 0x90;
    val = FUNC7 (se, buf, &len, sizeof (buf));
    FUNC0 (val == EINVAL);

    len = 16;
    buf[0] = 0x90;
    buf[15] = 1;
    val = FUNC7 (se, buf, &len, sizeof (buf));
    FUNC0 (val == EINVAL);

    /* Too small buffer (seq=1) */
    len = 20;
    FUNC3 (buf, 0, len);
    buf[0] = 0x80;
    buf[3] = 1;
    val = FUNC7 (se, buf, &len, 39);
    FUNC0 (val == ENOSPC);
    FUNC0 (len == 40);

    len = 31;
    val = FUNC6 (sd, buf, &len);
    FUNC0 (val == EINVAL);

    /* OK (seq=3) */
    buf[0] = 0x80;
    buf[3] = 3;
    for (unsigned i = 0; i < 256; i++)
        buf[i + 12] = i;
    len = 0x10c;
    val = FUNC7 (se, buf, &len, 0x120);
    FUNC0 (val == 0);
    FUNC0 (len == 0x120);

    FUNC2 (buf2, buf, len);
    val = FUNC6 (sd, buf2, &len);
    FUNC0 (val == 0);
    FUNC0 (len == 0x10c);
    FUNC0 (!FUNC1 (buf2, "\x80\x00\x00\x03" "\x00\x00\x00\x00"
                           "\x00\x00\x00\x00", 12));
    for (unsigned i = 0; i < 256; i++)
        FUNC0 (buf2[i + 12] == i); // test actual decryption

    /* Replay attack (seq=3) */
    len = 0x120;
    val = FUNC6 (sd, buf, &len);
    FUNC0 (val == EACCES);
    FUNC0 (len == 0x10c);

    /* OK but late (seq=2) */
    buf[0] = 0x80;
    buf[3] = 2;
    val = FUNC7 (se, buf, &len, 0x120);
    FUNC0 (val == 0);
    FUNC0 (len == 0x120);

    FUNC2 (buf2, buf, len);
    val = FUNC6 (sd, buf2, &len);
    FUNC0 (val == 0);
    FUNC0 (len == 0x10c);

    /* Late replay attack (seq=3) */
    len = 0x120;
    val = FUNC6 (sd, buf, &len);
    FUNC0 (val == EACCES);
    FUNC0 (len == 0x10c);

    FUNC5 (se);
    FUNC5 (sd);
    return 0;
}