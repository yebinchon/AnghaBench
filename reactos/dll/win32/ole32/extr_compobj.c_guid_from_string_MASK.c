#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Data1; int Data2; int Data3; int* Data4; } ;
typedef  char* LPCWSTR ;
typedef  TYPE_1__ GUID ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int* guid_conv_table ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC4(LPCWSTR s, GUID *id)
{
  int	i;

  if (!s || s[0]!='{') {
    FUNC3( id, 0, sizeof (CLSID) );
    if(!s) return TRUE;
    return FALSE;
  }

  FUNC0("%s -> %p\n", FUNC1(s), id);

  /* in form {XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX} */

  id->Data1 = 0;
  for (i = 1; i < 9; i++) {
    if (!FUNC2(s[i])) return FALSE;
    id->Data1 = (id->Data1 << 4) | guid_conv_table[s[i]];
  }
  if (s[9]!='-') return FALSE;

  id->Data2 = 0;
  for (i = 10; i < 14; i++) {
    if (!FUNC2(s[i])) return FALSE;
    id->Data2 = (id->Data2 << 4) | guid_conv_table[s[i]];
  }
  if (s[14]!='-') return FALSE;

  id->Data3 = 0;
  for (i = 15; i < 19; i++) {
    if (!FUNC2(s[i])) return FALSE;
    id->Data3 = (id->Data3 << 4) | guid_conv_table[s[i]];
  }
  if (s[19]!='-') return FALSE;

  for (i = 20; i < 37; i+=2) {
    if (i == 24) {
      if (s[i]!='-') return FALSE;
      i++;
    }
    if (!FUNC2(s[i]) || !FUNC2(s[i+1])) return FALSE;
    id->Data4[(i-20)/2] = guid_conv_table[s[i]] << 4 | guid_conv_table[s[i+1]];
  }

  if (s[37] == '}' && s[38] == '\0')
    return TRUE;

  return FALSE;
}