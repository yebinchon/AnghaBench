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
typedef  int /*<<< orphan*/ * PROPINFO ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 unsigned int ROPCODE_GENERIC ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(char *OutputDir, unsigned Bpp)
{
    FILE *Out;
    unsigned RopCode;
    PROPINFO RopInfo;
    char *FileName;

    FileName = FUNC12(FUNC17(OutputDir) + 12);
    if (NULL == FileName)
    {
        FUNC10(stderr, "Out of memory\n");
        FUNC7(1);
    }
    FUNC16(FileName, OutputDir);
    if ('/' != FileName[FUNC17(FileName) - 1])
    {
        FUNC15(FileName, "/");
    }
    FUNC14(FileName + FUNC17(FileName), "dib%ugen.c", Bpp);

    Out = FUNC9(FileName, "w");
    FUNC11(FileName);
    if (NULL == Out)
    {
        FUNC13("Error opening output file");
        FUNC7(1);
    }

    FUNC5(Out);
    FUNC6(Out, "/* This is a generated file. Please do not edit */\n");
    FUNC6(Out, "\n");
    FUNC6(Out, "#include <win32k.h>\n");
    FUNC2(Out);

    RopInfo = FUNC4(ROPCODE_GENERIC);
    FUNC1(Out, Bpp, RopInfo);
    for (RopCode = 0; RopCode < 256; RopCode++)
    {
        RopInfo = FUNC4(RopCode);
        if (NULL != RopInfo)
        {
            FUNC1(Out, Bpp, RopInfo);
        }
    }
    FUNC3(Out, Bpp);
    FUNC0(Out, Bpp);

    FUNC8(Out);
}