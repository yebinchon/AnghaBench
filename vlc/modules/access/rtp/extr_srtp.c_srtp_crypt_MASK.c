#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_5__ {int window; int /*<<< orphan*/  salt; int /*<<< orphan*/  cipher; } ;
struct TYPE_6__ {int rtp_seq; int rtp_roc; int flags; TYPE_1__ rtp; } ;
typedef  TYPE_2__ srtp_session_t ;
typedef  int int16_t ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int SRTP_UNENCRYPTED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int*,size_t) ; 
 int FUNC5 (int*) ; 
 int FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC7 (srtp_session_t *s, uint8_t *buf, size_t len)
{
    FUNC1 (s != NULL);
    FUNC1 (len >= 12u);

    if ((buf[0] >> 6) != 2)
        return EINVAL;

    /* Computes encryption offset */
    uint16_t offset = 12;
    offset += (buf[0] & 0xf) * 4; // skips CSRC

    if (buf[0] & 0x10)
    {
        uint16_t extlen;

        offset += 4;
        if (len < offset)
            return EINVAL;

        FUNC3 (&extlen, buf + offset - 2, 2);
        offset += FUNC2 (extlen); // skips RTP extension header
    }

    if (len < offset)
        return EINVAL;

    /* Determines RTP 48-bits counter and SSRC */
    uint16_t seq = FUNC5 (buf);
    uint32_t roc = FUNC6 (s, seq), ssrc;
    FUNC3 (&ssrc, buf + 8, 4);

    /* Updates ROC and sequence (it's safe now) */
    int16_t diff = seq - s->rtp_seq;
    if (diff > 0)
    {
        /* Sequence in the future, good */
        s->rtp.window = s->rtp.window << diff;
        s->rtp.window |= FUNC0(1);
        s->rtp_seq = seq, s->rtp_roc = roc;
    }
    else
    {
        /* Sequence in the past/present, bad */
        diff = -diff;
        if ((diff >= 64) || ((s->rtp.window >> diff) & 1))
            return EACCES; /* Replay attack */
        s->rtp.window |= FUNC0(1) << diff;
    }

    /* Encrypt/Decrypt */
    if (s->flags & SRTP_UNENCRYPTED)
        return 0;

    if (FUNC4 (s->rtp.cipher, ssrc, roc, seq, s->rtp.salt,
                   buf + offset, len - offset))
        return EINVAL;

    return 0;
}