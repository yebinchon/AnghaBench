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
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int SUBPICTURE_ALIGN_RIGHT ; 
 int SUBPICTURE_ALIGN_TOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,char*) ; 

void FUNC4(vout_thread_t *vout, int channel,
                       const char *format, va_list args)
{
    char *string;
    if (FUNC2(&string, format, args) != -1) {
        FUNC3(vout, channel,
                     SUBPICTURE_ALIGN_TOP|SUBPICTURE_ALIGN_RIGHT, FUNC0(1),
                     string);
        FUNC1(string);
    }
}