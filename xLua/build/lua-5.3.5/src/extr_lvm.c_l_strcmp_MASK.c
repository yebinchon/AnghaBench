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
typedef  int /*<<< orphan*/  TString ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (char const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4 (const TString *ls, const TString *rs) {
  const char *l = FUNC0(ls);
  size_t ll = FUNC3(ls);
  const char *r = FUNC0(rs);
  size_t lr = FUNC3(rs);
  for (;;) {  /* for each segment */
    int temp = FUNC1(l, r);
    if (temp != 0)  /* not equal? */
      return temp;  /* done */
    else {  /* strings are equal up to a '\0' */
      size_t len = FUNC2(l);  /* index of first '\0' in both strings */
      if (len == lr)  /* 'rs' is finished? */
        return (len == ll) ? 0 : 1;  /* check 'ls' */
      else if (len == ll)  /* 'ls' is finished? */
        return -1;  /* 'ls' is smaller than 'rs' ('rs' is not finished) */
      /* both strings longer than 'len'; go on comparing after the '\0' */
      len++;
      l += len; ll -= len; r += len; lr -= len;
    }
  }
}