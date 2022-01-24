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
typedef  int uint_fast32_t ;
typedef  int uint8_t ;
struct vlc_tls {int dummy; } ;
struct vlc_h2_frame {int* data; int /*<<< orphan*/ * next; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_frame*) ; 
 struct vlc_h2_frame* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  (*) (struct vlc_h2_frame*),struct vlc_h2_frame*) ; 
 int FUNC6 (struct vlc_tls*,int*,int) ; 

__attribute__((used)) static struct vlc_h2_frame *FUNC7(struct vlc_tls *tls)
{
    uint8_t header[9];
    ssize_t r = FUNC6(tls, header, 9);
    /* TODO: actually block only until third byte */
    if (r < 3)
        return NULL;

    uint_fast32_t len = 9 + ((header[0] << 16) | (header[1] << 8) | header[2]);

    struct vlc_h2_frame *f = FUNC1(sizeof (*f) + len);
    if (FUNC3(f == NULL))
        return NULL;

    f->next = NULL;
    FUNC2(f->data, header, r);
    len -= r;

    if (len > 0)
    {
        FUNC5(free, f);
        if (FUNC6(tls, f->data + r, len) < (ssize_t)len)
        {
            FUNC0(f);
            f = NULL;
        }
        FUNC4();
    }
    return f;
}