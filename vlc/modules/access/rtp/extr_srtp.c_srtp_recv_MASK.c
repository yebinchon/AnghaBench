#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  mac; } ;
struct TYPE_8__ {int flags; size_t tag_len; int rtp_rcc; int /*<<< orphan*/  rtp_roc; TYPE_1__ rtp; } ;
typedef  TYPE_2__ srtp_session_t ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int SRTP_UNAUTHENTICATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int* FUNC7 (int /*<<< orphan*/ ,int*,size_t,scalar_t__) ; 
 int FUNC8 (int*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int) ; 
 int FUNC10 (TYPE_2__*,int*,size_t) ; 

int
FUNC11 (srtp_session_t *s, uint8_t *buf, size_t *lenp)
{
    size_t len = *lenp;
    if (len < 12u)
        return EINVAL;

    if (!(s->flags & SRTP_UNAUTHENTICATED))
    {
        size_t tag_len = s->tag_len, roc_len = 0;
        if (FUNC6 (s))
        {
            if ((FUNC8 (buf) % s->rtp_rcc) == 0)
            {
                roc_len = 4;
                if (FUNC6 (s) == 3)
                    tag_len = 0;
                else
                    tag_len -= 4;
            }
            else
            {
                if (FUNC6 (s) & 1)
                    tag_len = 0; // RCC mode 1 or 3: no auth
            }
        }

        if (len < (12u + roc_len + tag_len))
            return EINVAL;
        len -= roc_len + tag_len;

        uint32_t roc = FUNC9 (s, FUNC8 (buf)), rcc;
        if (roc_len)
        {
            FUNC0 (roc_len == 4);
            FUNC2 (&rcc, buf + len, 4);
            rcc = FUNC3 (rcc);
        }
        else
            rcc = roc;

        const uint8_t *tag = FUNC7 (s->rtp.mac, buf, len, rcc);
#if 0
        printf ("Computed: 0x");
        for (unsigned i = 0; i < tag_len; i++)
            printf ("%02x", tag[i]);
        printf ("\nReceived: 0x");
        for (unsigned i = 0; i < tag_len; i++)
            printf ("%02x", buf[len + roc_len + i]);
        puts ("");
#endif
        if (FUNC1 (buf + len + roc_len, tag, tag_len))
            return EACCES;

        if (roc_len)
        {
            /* Authenticated packet carried a Roll-Over-Counter */
            s->rtp_roc += rcc - roc;
            FUNC0 (FUNC9 (s, FUNC8 (buf)) == rcc);
        }
        *lenp = len;
    }

    return FUNC10 (s, buf, len);
}