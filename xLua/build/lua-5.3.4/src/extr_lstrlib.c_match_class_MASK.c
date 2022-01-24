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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int FUNC11 (int c, int cl) {
  int res;
  switch (FUNC10(cl)) {
    case 'a' : res = FUNC1(c); break;
    case 'c' : res = FUNC2(c); break;
    case 'd' : res = FUNC3(c); break;
    case 'g' : res = FUNC4(c); break;
    case 'l' : res = FUNC5(c); break;
    case 'p' : res = FUNC6(c); break;
    case 's' : res = FUNC7(c); break;
    case 'u' : res = FUNC8(c); break;
    case 'w' : res = FUNC0(c); break;
    case 'x' : res = FUNC9(c); break;
    case 'z' : res = (c == 0); break;  /* deprecated option */
    default: return (cl == c);
  }
  return (FUNC5(cl) ? res : !res);
}