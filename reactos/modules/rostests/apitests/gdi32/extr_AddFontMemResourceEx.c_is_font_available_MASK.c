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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLIP_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
 int /*<<< orphan*/  DEFAULT_PITCH ; 
 int /*<<< orphan*/  DEFAULT_QUALITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FW_DONTCARE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  OUT_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static BOOL FUNC8(HDC hdc, const char* fontName)
{
    char name[64];
    BOOL ret;

    HFONT font = FUNC0(0, 0, 0, 0, FW_DONTCARE, FALSE, FALSE, FALSE, DEFAULT_CHARSET,
                            OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, DEFAULT_PITCH, fontName);
    HGDIOBJ old = FUNC4(hdc, font);


    FUNC5(0xdeadbeef);

    ret = FUNC3(hdc, sizeof(name), name);
    FUNC7(ret, "GetTextFaceA error %lu for %s\n", FUNC2(), fontName);
    FUNC4(hdc, old);
    FUNC1(font);

    if (ret)
    {
        return !FUNC6(name, fontName);
    }
    return FALSE;
}