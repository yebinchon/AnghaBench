#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct _cms_typehandler_struct {int dummy; } ;
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsMLU ;
struct TYPE_10__ {int /*<<< orphan*/  (* Write ) (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
typedef  int /*<<< orphan*/  Filler ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cmsNoCountry ; 
 int /*<<< orphan*/  cmsNoLanguage ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 

__attribute__((used)) static
cmsBool  FUNC16(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsMLU* mlu = (cmsMLU*) Ptr;
    char *Text = NULL;
    wchar_t *Wide = NULL;
    cmsUInt32Number len, len_text, len_tag_requirement, len_aligned;
    cmsBool  rc = FALSE;
    char Filler[68];
    FUNC10(self);

    // Used below for writing zeroes
    FUNC11(Filler, 0, sizeof(Filler));

    // Get the len of string
    len = FUNC8(ContextID, mlu, cmsNoLanguage, cmsNoCountry, NULL, 0);

    // Specification ICC.1:2001-04 (v2.4.0): It has been found that textDescriptionType can contain misaligned data
    //(see clause 4.1 for the definition of 'aligned'). Because the Unicode language
    // code and Unicode count immediately follow the ASCII description, their
    // alignment is not correct if the ASCII count is not a multiple of four. The
    // ScriptCode code is misaligned when the ASCII count is odd. Profile reading and
    // writing software must be written carefully in order to handle these alignment
    // problems.
    //
    // The above last sentence suggest to handle alignment issues in the
    // parser. The provided example (Table 69 on Page 60) makes this clear.
    // The padding only in the ASCII count is not sufficient for a aligned tag
    // size, with the same text size in ASCII and Unicode.

    // Null strings
    if (len <= 0) {

        Text = (char*)    FUNC2(ContextID, "", sizeof(char));
        Wide = (wchar_t*) FUNC2(ContextID, L"", sizeof(wchar_t));
    }
    else {
        // Create independent buffers
        Text = (char*) FUNC1(ContextID, len, sizeof(char));
        if (Text == NULL) goto Error;

        Wide = (wchar_t*) FUNC1(ContextID, len, sizeof(wchar_t));
        if (Wide == NULL) goto Error;

        // Get both representations.
        FUNC8(ContextID, mlu, cmsNoLanguage, cmsNoCountry,  Text, len * sizeof(char));
        FUNC9(ContextID, mlu,  cmsNoLanguage, cmsNoCountry,  Wide, len * sizeof(wchar_t));
    }

    // Tell the real text len including the null terminator and padding
    len_text = (cmsUInt32Number) FUNC12(Text) + 1;
    // Compute an total tag size requirement
    len_tag_requirement = (8+4+len_text+4+4+2*len_text+2+1+67);
    len_aligned = FUNC0(len_tag_requirement);

  // * cmsUInt32Number       count;          * Description length
  // * cmsInt8Number         desc[count]     * NULL terminated ascii string
  // * cmsUInt32Number       ucLangCode;     * UniCode language code
  // * cmsUInt32Number       ucCount;        * UniCode description length
  // * cmsInt16Number        ucDesc[ucCount];* The UniCode description
  // * cmsUInt16Number       scCode;         * ScriptCode code
  // * cmsUInt8Number        scCount;        * ScriptCode count
  // * cmsInt8Number         scDesc[67];     * ScriptCode Description

    if (!FUNC5(ContextID, io, len_text)) goto Error;
    if (!io ->Write(ContextID, io, len_text, Text)) goto Error;

    if (!FUNC5(ContextID, io, 0)) goto Error;  // ucLanguageCode

    if (!FUNC5(ContextID, io, len_text)) goto Error;
    // Note that in some compilers sizeof(cmsUInt16Number) != sizeof(wchar_t)
    if (!FUNC7(ContextID, io, len_text, Wide)) goto Error;

    // ScriptCode Code & count (unused)
    if (!FUNC4(ContextID, io, 0)) goto Error;
    if (!FUNC6(ContextID, io, 0)) goto Error;

    if (!io ->Write(ContextID, io, 67, Filler)) goto Error;

    // possibly add pad at the end of tag
    if(len_aligned - len_tag_requirement > 0)
      if (!io ->Write(ContextID, io, len_aligned - len_tag_requirement, Filler)) goto Error;

    rc = TRUE;

Error:
    if (Text) FUNC3(ContextID, Text);
    if (Wide) FUNC3(ContextID, Wide);

    return rc;

    FUNC10(nItems);
}