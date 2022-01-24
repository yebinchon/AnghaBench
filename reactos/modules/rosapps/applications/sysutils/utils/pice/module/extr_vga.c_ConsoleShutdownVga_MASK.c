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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FONTBUFFERSIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SCREEN_BUFFER_SIZE ; 
 int /*<<< orphan*/  pFontBufferVga ; 
 int /*<<< orphan*/  pScreenBufferHardwareVga ; 
 scalar_t__ pScreenBufferTempVga ; 
 scalar_t__ pScreenBufferVga ; 

void FUNC4(void)
{
    FUNC0();

	if(pScreenBufferVga)
    {
        FUNC3(pScreenBufferVga);
        FUNC3(pScreenBufferTempVga);
		FUNC2(pScreenBufferHardwareVga,SCREEN_BUFFER_SIZE);
		FUNC2(pFontBufferVga,FONTBUFFERSIZE);
    }

    FUNC1();
}