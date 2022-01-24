#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* stream; } ;
struct TYPE_8__ {int /*<<< orphan*/  dwError; } ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  TYPE_2__ ME_OutStream ;
typedef  int /*<<< orphan*/  ME_Cursor ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  EDITSTREAM ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,int,int) ; 
 int SF_RTF ; 
 int SF_TEXT ; 
 int SF_TEXTIZED ; 

LRESULT FUNC5(ME_TextEditor *editor, DWORD dwFormat,
                          const ME_Cursor *start,
                          int nChars, EDITSTREAM *stream)
{
  ME_OutStream *pStream = FUNC2(editor, stream);

  if (dwFormat & SF_RTF)
    FUNC3(editor, pStream, start, nChars, dwFormat);
  else if (dwFormat & SF_TEXT || dwFormat & SF_TEXTIZED)
    FUNC4(editor, pStream, start, nChars, dwFormat);
  if (!pStream->stream->dwError)
    FUNC0(pStream);
  return FUNC1(pStream);
}