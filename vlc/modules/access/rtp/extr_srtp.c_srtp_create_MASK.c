#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int flags; unsigned int tag_len; int rtp_rcc; int /*<<< orphan*/  rtp; int /*<<< orphan*/  rtcp; } ;
typedef  TYPE_1__ srtp_session_t ;

/* Variables and functions */
 int GCRY_CIPHER_AES ; 
 int GCRY_CIPHER_NONE ; 
 int GCRY_MD_NONE ; 
 int GCRY_MD_SHA1 ; 
#define  SRTP_AUTH_HMAC_SHA1 131 
#define  SRTP_AUTH_NULL 130 
#define  SRTP_ENCR_AES_CM 129 
#define  SRTP_ENCR_NULL 128 
 unsigned int SRTP_FLAGS_MASK ; 
 int SRTP_PRF_AES_CM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

srtp_session_t *
FUNC7 (int encr, int auth, unsigned tag_len, int prf, unsigned flags)
{
    if ((flags & ~SRTP_FLAGS_MASK))
        return NULL;

    int cipher, md;
    switch (encr)
    {
        case SRTP_ENCR_NULL:
            cipher = GCRY_CIPHER_NONE;
            break;

        case SRTP_ENCR_AES_CM:
            cipher = GCRY_CIPHER_AES;
            break;

        default:
            return NULL;
    }

    switch (auth)
    {
        case SRTP_AUTH_NULL:
            md = GCRY_MD_NONE;
            break;

        case SRTP_AUTH_HMAC_SHA1:
            md = GCRY_MD_SHA1;
            break;

        default:
            return NULL;
    }

    if (tag_len > FUNC1 (md))
        return NULL;

    if (prf != SRTP_PRF_AES_CM)
        return NULL;

    srtp_session_t *s = FUNC2 (sizeof (*s));
    if (s == NULL)
        return NULL;

    FUNC3 (s, 0, sizeof (*s));
    s->flags = flags;
    s->tag_len = tag_len;
    s->rtp_rcc = 1; /* Default RCC rate */
    if (FUNC6 (s))
    {
        if (tag_len < 4)
            goto error;
    }

    if (FUNC4 (&s->rtp, cipher, md) == 0)
    {
        if (FUNC4 (&s->rtcp, cipher, md) == 0)
            return s;
        FUNC5 (&s->rtp);
    }

error:
    FUNC0 (s);
    return NULL;
}