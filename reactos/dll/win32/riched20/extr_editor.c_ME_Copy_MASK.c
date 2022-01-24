#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ cpMin; scalar_t__ cpMax; } ;
struct TYPE_6__ {scalar_t__ lpOleCallback; scalar_t__ cPasswordMask; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Cursor ;
typedef  int /*<<< orphan*/ * LPDATAOBJECT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ CHARRANGE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RECO_COPY ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static BOOL FUNC7(ME_TextEditor *editor, const ME_Cursor *start, int nChars)
{
  LPDATAOBJECT dataObj = NULL;
  HRESULT hr = S_OK;

  if (editor->cPasswordMask)
    return FALSE; /* Copying or Cutting masked text isn't allowed */

  if(editor->lpOleCallback)
  {
    CHARRANGE range;
    range.cpMin = FUNC3(start);
    range.cpMax = range.cpMin + nChars;
    hr = FUNC2(editor->lpOleCallback, &range, RECO_COPY, &dataObj);
  }
  if(FUNC0(hr) || !dataObj)
    hr = FUNC4(editor, start, nChars, &dataObj);
  if(FUNC6(hr)) {
    hr = FUNC5(dataObj);
    FUNC1(dataObj);
  }
  return FUNC6(hr);
}