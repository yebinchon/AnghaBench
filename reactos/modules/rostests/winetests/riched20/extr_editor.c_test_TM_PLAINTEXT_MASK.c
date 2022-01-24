#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cbSize; int dwMask; int dwEffects; } ;
struct TYPE_3__ {int cpMin; int cpMax; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ CHARRANGE ;
typedef  TYPE_2__ CHARFORMAT2A ;

/* Variables and functions */
 int CFE_BOLD ; 
 int CFE_ITALIC ; 
 int CFM_BOLD ; 
 int CFM_ITALIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_EXSETSEL ; 
 int /*<<< orphan*/  EM_GETCHARFORMAT ; 
 int /*<<< orphan*/  EM_SETCHARFORMAT ; 
 int /*<<< orphan*/  EM_SETTEXTMODE ; 
 int SCF_ALL ; 
 int SCF_DEFAULT ; 
 int SCF_SELECTION ; 
 int SCF_WORD ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int TM_PLAINTEXT ; 
 int TM_RICHTEXT ; 
 int /*<<< orphan*/  WM_COPY ; 
 int /*<<< orphan*/  WM_PASTE ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC4(void)
{
  /*Tests plain text properties*/

  HWND hwndRichEdit = FUNC2(NULL);
  CHARFORMAT2A cf2, cf2test;
  CHARRANGE cr;
  int rc = 0;

  /*Switch to plain text mode*/

  FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"");
  FUNC1(hwndRichEdit, EM_SETTEXTMODE, TM_PLAINTEXT, 0);

  /*Fill control with text*/

  FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"Is Wine an emulator? No it's not");

  /*Select some text and bold it*/

  cr.cpMin = 10;
  cr.cpMax = 20;
  FUNC1(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  cf2.cbSize = sizeof(CHARFORMAT2A);
  FUNC1(hwndRichEdit, EM_GETCHARFORMAT, SCF_DEFAULT, (LPARAM)&cf2);

  cf2.dwMask = CFM_BOLD | cf2.dwMask;
  cf2.dwEffects = CFE_BOLD ^ cf2.dwEffects;

  rc = FUNC1(hwndRichEdit, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2);
  FUNC3(rc == 0, "EM_SETCHARFORMAT returned %d instead of 0\n", rc);

  rc = FUNC1(hwndRichEdit, EM_SETCHARFORMAT, SCF_WORD | SCF_SELECTION, (LPARAM)&cf2);
  FUNC3(rc == 0, "EM_SETCHARFORMAT returned %d instead of 0\n", rc);

  rc = FUNC1(hwndRichEdit, EM_SETCHARFORMAT, SCF_ALL, (LPARAM)&cf2);
  FUNC3(rc == 1, "EM_SETCHARFORMAT returned %d instead of 1\n", rc);

  /*Get the formatting of those characters*/

  FUNC1(hwndRichEdit, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2);

  /*Get the formatting of some other characters*/
  cf2test.cbSize = sizeof(CHARFORMAT2A);
  cr.cpMin = 21;
  cr.cpMax = 30;
  FUNC1(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  FUNC1(hwndRichEdit, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2test);

  /*Test that they are the same as plain text allows only one formatting*/

  FUNC3((cf2.dwMask == cf2test.dwMask) && (cf2.dwEffects == cf2test.dwEffects),
     "two selections' formats differ - cf2.dwMask: %x, cf2test.dwMask %x, cf2.dwEffects: %x, cf2test.dwEffects: %x\n",
     cf2.dwMask, cf2test.dwMask, cf2.dwEffects, cf2test.dwEffects);
  
  /*Fill the control with a "wine" string, which when inserted will be bold*/

  FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"wine");

  /*Copy the bolded "wine" string*/

  cr.cpMin = 0;
  cr.cpMax = 4;
  FUNC1(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  FUNC1(hwndRichEdit, WM_COPY, 0, 0);

  /*Swap back to rich text*/

  FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"");
  FUNC1(hwndRichEdit, EM_SETTEXTMODE, TM_RICHTEXT, 0);

  /*Set the default formatting to bold italics*/

  FUNC1(hwndRichEdit, EM_GETCHARFORMAT, SCF_DEFAULT, (LPARAM)&cf2);
  cf2.dwMask |= CFM_ITALIC;
  cf2.dwEffects ^= CFE_ITALIC;
  rc = FUNC1(hwndRichEdit, EM_SETCHARFORMAT, SCF_ALL, (LPARAM)&cf2);
  FUNC3(rc == 1, "EM_SETCHARFORMAT returned %d instead of 1\n", rc);

  /*Set the text in the control to "wine", which will be bold and italicized*/

  FUNC1(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)"wine");

  /*Paste the plain text "wine" string, which should take the insert
   formatting, which at the moment is bold italics*/

  FUNC1(hwndRichEdit, WM_PASTE, 0, 0);

  /*Select the first "wine" string and retrieve its formatting*/

  cr.cpMin = 1;
  cr.cpMax = 3;
  FUNC1(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  FUNC1(hwndRichEdit, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2);

  /*Select the second "wine" string and retrieve its formatting*/

  cr.cpMin = 5;
  cr.cpMax = 7;
  FUNC1(hwndRichEdit, EM_EXSETSEL, 0, (LPARAM)&cr);
  FUNC1(hwndRichEdit, EM_GETCHARFORMAT, SCF_SELECTION, (LPARAM)&cf2test);

  /*Compare the two formattings. They should be the same.*/

  FUNC3((cf2.dwMask == cf2test.dwMask) && (cf2.dwEffects == cf2test.dwEffects),
     "Copied text retained formatting - cf2.dwMask: %x, cf2test.dwMask: %x, cf2.dwEffects: %x, cf2test.dwEffects: %x\n",
     cf2.dwMask, cf2test.dwMask, cf2.dwEffects, cf2test.dwEffects);
  FUNC0(hwndRichEdit);
}