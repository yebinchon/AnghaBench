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
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
#define  LANG_ARMENIAN 137 
#define  LANG_DIVEHI 136 
#define  LANG_GEORGIAN 135 
#define  LANG_GUJARATI 134 
#define  LANG_HINDI 133 
#define  LANG_KANNADA 132 
#define  LANG_KONKANI 131 
#define  LANG_MARATHI 130 
#define  LANG_PUNJABI 129 
#define  LANG_SANSKRIT 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3(LCID lcid)
{
  lcid = FUNC0(lcid);

  switch (FUNC1(lcid))
  {
  case LANG_ARMENIAN:
  case LANG_DIVEHI:
  case LANG_GEORGIAN:
  case LANG_GUJARATI:
  case LANG_HINDI:
  case LANG_KANNADA:
  case LANG_KONKANI:
  case LANG_MARATHI:
  case LANG_PUNJABI:
  case LANG_SANSKRIT:
    FUNC2("lcid 0x%08x: langid 0x%4x is Unicode Only\n", lcid, FUNC1(lcid));
    return TRUE;
  default:
    return FALSE;
  }
}