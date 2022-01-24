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
typedef  scalar_t__ cmsUInt8Number ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  Compressor ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (scalar_t__*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*,unsigned int) ; 

__attribute__((used)) static
void FUNC7(const char* ProfileFile)
{
    FILE* f;
    size_t size, EmbedLen;
    cmsUInt8Number* EmbedBuffer;

        f = FUNC2(ProfileFile, "rb");
        if (f == NULL) return;

        size = FUNC0(f);
        EmbedBuffer = (cmsUInt8Number*) FUNC5(size + 1);
        EmbedLen = FUNC3(EmbedBuffer, 1, size, f);
        FUNC1(f);
        EmbedBuffer[EmbedLen] = 0;

        FUNC6 (&Compressor, EmbedBuffer, (unsigned int) EmbedLen);
        FUNC4(EmbedBuffer);
}