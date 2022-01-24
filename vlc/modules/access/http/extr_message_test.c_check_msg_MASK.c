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
typedef  struct vlc_http_msg const vlc_http_msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_http_msg const*) ; 
 char* FUNC5 (struct vlc_http_msg const*,size_t*,int) ; 
 scalar_t__ FUNC6 (struct vlc_http_msg const*) ; 
 scalar_t__ FUNC7 (struct vlc_http_msg const*,int,int) ; 
 struct vlc_http_msg const* FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (struct vlc_http_msg const*) ; 

__attribute__((used)) static void FUNC10(struct vlc_http_msg *in,
                      void (*cb)(const struct vlc_http_msg *))
{
    struct vlc_http_msg *out;
    char *m1;
    size_t len;

    cb(in);

    m1 = FUNC5(in, &len, false);
    FUNC0(m1 != NULL);
    FUNC0(FUNC3(m1) == len);
    out = FUNC8(m1);
    FUNC1(stderr, "%s", m1);
    FUNC2(m1);
    /* XXX: request parsing not implemented/needed yet */
    if (FUNC6(in) >= 0)
    {
        FUNC0(out != NULL);
        cb(out);
        FUNC4(out);
    }

    out = (struct vlc_http_msg *)FUNC7(in, 1, true);
    FUNC0(out != NULL);
    cb(out);
    FUNC0(FUNC9(out) == NULL);
    FUNC4(out);

    cb(in);
    FUNC4(in);
}