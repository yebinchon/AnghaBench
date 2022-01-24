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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_JScript ; 
 int /*<<< orphan*/  CLSID_VBScript ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static BOOL FUNC3(LPCWSTR type, GUID *guid)
{
    const WCHAR text_javascriptW[] =
        {'t','e','x','t','/','j','a','v','a','s','c','r','i','p','t',0};
    const WCHAR text_jscriptW[] =
        {'t','e','x','t','/','j','s','c','r','i','p','t',0};
    const WCHAR text_vbscriptW[] =
        {'t','e','x','t','/','v','b','s','c','r','i','p','t',0};

    /* FIXME: Handle more types */
    if(!FUNC2(type, text_javascriptW) || !FUNC2(type, text_jscriptW)) {
        *guid = CLSID_JScript;
    }else if(!FUNC2(type, text_vbscriptW)) {
        *guid = CLSID_VBScript;
    }else {
        FUNC0("Unknown type %s\n", FUNC1(type));
        return FALSE;
    }

    return TRUE;
}