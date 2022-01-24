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
struct vlc_h2_output {int failed; int /*<<< orphan*/  lock; int /*<<< orphan*/  tls; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC4(void *data)
{
    static const char http2_hello[] = "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n";
    struct vlc_h2_output *out = data;

    if (FUNC1(out->tls, http2_hello, 24) < 24)
    {
        FUNC2(&out->lock);
        out->failed = true;
        FUNC3(&out->lock);
        return NULL;
    }

    return FUNC0(data);
}