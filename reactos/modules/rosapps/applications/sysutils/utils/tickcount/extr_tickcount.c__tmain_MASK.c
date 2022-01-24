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
typedef  int /*<<< orphan*/  uint64_ ;
typedef  scalar_t__ _TCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__* FUNC2 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

int FUNC7(int argc, _TCHAR * argv[])
{
 int r;

 if(argc <= 1)
 {
  FUNC6((uint64_)FUNC0(), 0, NULL, 0);
  FUNC3(FUNC1('\n'), stdout);
 }
 else if(argc == 2 && argv[1][0] == FUNC1('-') && argv[1][1] == 0)
 {
  while(!FUNC4(stdin))
  {
   _TCHAR buf[23];
   _TCHAR * str;

   str = FUNC2(buf, 22, stdin);

   if(str == NULL)
    return 0;

   if((r = FUNC5(str)) != 0)
    return r;
  }
 }
 else
 {
  int i;

  for(i = 1; i < argc; ++ i)
   if((r = FUNC5(argv[i])) != 0)
    return r;
 }

 return 0;
}