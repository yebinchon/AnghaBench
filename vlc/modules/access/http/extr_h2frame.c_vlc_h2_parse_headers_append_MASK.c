#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ sid; size_t len; int /*<<< orphan*/ * buf; } ;
struct vlc_h2_parser {TYPE_1__ headers; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_H2_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vlc_h2_parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vlc_h2_parser *p,
                                       const uint8_t *data, size_t len)
{
    FUNC0(p->headers.sid != 0);

    if (p->headers.len + len > 65536)
        return FUNC4(p, VLC_H2_INTERNAL_ERROR);

    uint8_t *buf = FUNC2(p->headers.buf, p->headers.len + len);
    if (FUNC3(buf == NULL))
        return FUNC4(p, VLC_H2_INTERNAL_ERROR);

    p->headers.buf = buf;
    FUNC1(p->headers.buf + p->headers.len, data, len);
    p->headers.len += len;
    return 0;
}