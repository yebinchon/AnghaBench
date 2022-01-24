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
struct vlc_tls {int dummy; } ;
struct vlc_h2_frame {int /*<<< orphan*/  data; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_h2_frame*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (struct vlc_h2_frame*),struct vlc_h2_frame*) ; 
 size_t FUNC3 (struct vlc_h2_frame*) ; 
 scalar_t__ FUNC4 (struct vlc_tls*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC5(struct vlc_tls *tls, struct vlc_h2_frame *f)
{
    size_t len = FUNC3(f);
    ssize_t val;

    FUNC2(free, f);
    val = FUNC4(tls, f->data, len);
    FUNC1();
    FUNC0(f);

    return ((size_t)val == len) ? 0 : -1;
}