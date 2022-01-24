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
struct vlc_memstream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_memstream*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_memstream*,char*) ; 

void FUNC4(struct vlc_memstream *restrict stream,
                  const char *type, const char *proto, int dport,
                  unsigned pt, bool bw_indep, unsigned bw,
                  const char *ptname, unsigned clock, unsigned chans,
                  const char *fmtp)
{
    /* Some default values */
    if (type == NULL)
        type = "video";
    if (proto == NULL)
        proto = "RTP/AVP";
    FUNC0 (pt < 128u);

    FUNC2(stream, "m=%s %u %s %u\r\n", type, dport, proto, pt);

    if (bw > 0)
        FUNC2(stream, "b=%s:%u\r\n",
                             bw_indep ? "TIAS" : "AS", bw);
    FUNC2(stream, "b=%s:%u\r\n", "RR", 0);

    /* RTP payload type map */
    if (ptname != NULL)
    {
        FUNC2(stream, "a=rtpmap:%u %s/%u", pt, ptname, clock);
        if ((FUNC1(type, "audio") == 0) && (chans != 1))
            FUNC2(stream, "/%u", chans);
        FUNC3(stream, "\r\n");
    }

    /* Format parameters */
    if (fmtp != NULL)
        FUNC2(stream, "a=fmtp:%u %s\r\n", pt, fmtp);
}