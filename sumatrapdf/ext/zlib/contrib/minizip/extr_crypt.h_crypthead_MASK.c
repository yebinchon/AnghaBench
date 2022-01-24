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
typedef  int /*<<< orphan*/  z_crc_t ;

/* Variables and functions */
 int RAND_HEAD_LEN ; 
 int ZCR_SEED2 ; 
 int /*<<< orphan*/  FUNC0 (char const*,unsigned long*,int /*<<< orphan*/  const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned long*,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static int FUNC5(const char* passwd,      /* password string */
                     unsigned char* buf,      /* where to write header */
                     int bufSize,
                     unsigned long* pkeys,
                     const z_crc_t* pcrc_32_tab,
                     unsigned long crcForCrypting)
{
    int n;                       /* index in random header */
    int t;                       /* temporary */
    int c;                       /* random byte */
    unsigned char header[RAND_HEAD_LEN-2]; /* random header */
    static unsigned calls = 0;   /* ensure different random header each time */

    if (bufSize<RAND_HEAD_LEN)
      return 0;

    /* First generate RAND_HEAD_LEN-2 random bytes. We encrypt the
     * output of rand() to get less predictability, since rand() is
     * often poorly implemented.
     */
    if (++calls == 1)
    {
        FUNC2((unsigned)(FUNC3(NULL) ^ ZCR_SEED2));
    }
    FUNC0(passwd, pkeys, pcrc_32_tab);
    for (n = 0; n < RAND_HEAD_LEN-2; n++)
    {
        c = (FUNC1() >> 7) & 0xff;
        header[n] = (unsigned char)FUNC4(pkeys, pcrc_32_tab, c, t);
    }
    /* Encrypt random header (last two bytes is high word of crc) */
    FUNC0(passwd, pkeys, pcrc_32_tab);
    for (n = 0; n < RAND_HEAD_LEN-2; n++)
    {
        buf[n] = (unsigned char)FUNC4(pkeys, pcrc_32_tab, header[n], t);
    }
    buf[n++] = (unsigned char)FUNC4(pkeys, pcrc_32_tab, (int)(crcForCrypting >> 16) & 0xff, t);
    buf[n++] = (unsigned char)FUNC4(pkeys, pcrc_32_tab, (int)(crcForCrypting >> 24) & 0xff, t);
    return n;
}