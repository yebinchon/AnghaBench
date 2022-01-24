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
typedef  scalar_t__ HMODULE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 void* pScriptGetFontFeatureTags ; 
 void* pScriptGetFontLanguageTags ; 
 void* pScriptGetFontScriptTags ; 
 void* pScriptItemizeOpenType ; 
 void* pScriptShapeOpenType ; 

__attribute__((used)) static void FUNC3(void)
{
    HMODULE module = FUNC0("usp10.dll");

    FUNC2(module != 0, "Expected usp10.dll to be loaded.\n");

    pScriptItemizeOpenType = (void *)FUNC1(module, "ScriptItemizeOpenType");
    pScriptShapeOpenType = (void *)FUNC1(module, "ScriptShapeOpenType");
    pScriptGetFontScriptTags = (void *)FUNC1(module, "ScriptGetFontScriptTags");
    pScriptGetFontLanguageTags = (void *)FUNC1(module, "ScriptGetFontLanguageTags");
    pScriptGetFontFeatureTags = (void *)FUNC1(module, "ScriptGetFontFeatureTags");
}