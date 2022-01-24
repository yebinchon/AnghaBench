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
typedef  int /*<<< orphan*/  WRes ;
typedef  int /*<<< orphan*/  UInt16 ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  CSzFile ;
typedef  TYPE_1__ CBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  g_Alloc ; 

__attribute__((used)) static WRes FUNC6(CSzFile *p, const UInt16 *name)
{
  #ifdef USE_WINDOWS_FILE
  return OutFile_OpenW(p, name);
  #else
  CBuf buf;
  WRes res;
  FUNC1(&buf);
  FUNC4(FUNC5(&buf, name, 1));
  res = FUNC2(p, (const char *)buf.data);
  FUNC0(&buf, &g_Alloc);
  return res;
  #endif
}