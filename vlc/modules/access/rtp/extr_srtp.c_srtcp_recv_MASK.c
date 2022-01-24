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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  mac; } ;
struct TYPE_6__ {unsigned int tag_len; TYPE_1__ rtcp; } ;
typedef  TYPE_2__ srtp_session_t ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 

int
FUNC3 (srtp_session_t *s, uint8_t *buf, size_t *lenp)
{
    size_t len = *lenp;

    if (len < (4u + s->tag_len))
        return EINVAL;
    len -= s->tag_len;

    const uint8_t *tag = FUNC1 (s->rtcp.mac, buf, len);
    if (FUNC0 (buf + len, tag, s->tag_len))
         return EACCES;

    len -= 4; /* Remove SRTCP index before decryption */
    *lenp = len;
    return FUNC2 (s, buf, len);
}