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
typedef  scalar_t__ cmsUInt32Number ;
typedef  scalar_t__ cmsInt32Number ;
typedef  int /*<<< orphan*/  TIFF ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  TIFFTAG_ICCPROFILE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (scalar_t__*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static
void FUNC9(TIFF* Out, const char* ProfileFile)
{
    FILE* f;
    cmsInt32Number size;
    cmsUInt32Number EmbedLen;
    cmsUInt8Number* EmbedBuffer;

    f = FUNC5(ProfileFile, "rb");
    if (f == NULL) return;

    size = FUNC3(f);
    if (size < 0) return;

    EmbedBuffer = (cmsUInt8Number*) FUNC8(size + 1);
    if (EmbedBuffer == NULL) {
        FUNC1(size+1);
        return;
    }

    EmbedLen = (cmsUInt32Number) FUNC6(EmbedBuffer, 1, (size_t) size, f);

    if (EmbedLen != size)
        FUNC0("Cannot read %ld bytes to %s", size, ProfileFile);

    FUNC4(f);
    EmbedBuffer[EmbedLen] = 0;

    FUNC2(Out, TIFFTAG_ICCPROFILE, EmbedLen, EmbedBuffer);
    FUNC7(EmbedBuffer);
}