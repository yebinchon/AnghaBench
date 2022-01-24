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
typedef  int /*<<< orphan*/  UInt16 ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef  scalar_t__ SRes ;
typedef  TYPE_1__ CBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ SZ_OK ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_Alloc ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static SRes FUNC4(const UInt16 *s)
{
  CBuf buf;
  SRes res;
  FUNC1(&buf);
  res = FUNC2(&buf, s, 0);
  if (res == SZ_OK)
    FUNC3((const char *)buf.data, stdout);
  FUNC0(&buf, &g_Alloc);
  return res;
}