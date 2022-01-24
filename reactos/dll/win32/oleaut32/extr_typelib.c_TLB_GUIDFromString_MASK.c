#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {short* Data4; int /*<<< orphan*/  Data3; int /*<<< orphan*/  Data2; int /*<<< orphan*/  Data1; } ;
typedef  TYPE_1__ GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,short*) ; 
 short FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC5(const char *str, GUID *guid)
{
  char b[3];
  int i;
  short s;

  if(FUNC3(str, "%x-%hx-%hx-%hx", &guid->Data1, &guid->Data2, &guid->Data3, &s) != 4) {
    FUNC0("Can't parse guid %s\n", FUNC1(guid));
    return FALSE;
  }

  guid->Data4[0] = s >> 8;
  guid->Data4[1] = s & 0xff;

  b[2] = '\0';
  for(i = 0; i < 6; i++) {
    FUNC2(b, str + 24 + 2 * i, 2);
    guid->Data4[i + 2] = FUNC4(b, NULL, 16);
  }
  return TRUE;
}