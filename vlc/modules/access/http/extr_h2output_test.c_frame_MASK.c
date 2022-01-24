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
struct vlc_h2_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vlc_h2_frame* FUNC1 (int,unsigned char*,int,int) ; 

__attribute__((used)) static struct vlc_h2_frame *FUNC2(unsigned char c)
{
    struct vlc_h2_frame *f = FUNC1(1, &c, 1, false);
    FUNC0(f != NULL);
    return f;
}