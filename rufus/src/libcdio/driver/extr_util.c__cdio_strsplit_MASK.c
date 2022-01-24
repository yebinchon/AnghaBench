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
 char** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*) ; 

char **
FUNC5(const char str[], char delim) /* fixme -- non-reentrant */
{
  int n;
  char **strv = NULL;
  char *_str, *p;
  char _delim[2] = { 0, 0 };

  FUNC1 (str != NULL);

  _str = FUNC3(str);
  _delim[0] = delim;

  FUNC1 (_str != NULL);

  n = 1;
  p = _str;
  while(*p)
    if (*(p++) == delim)
      n++;

  strv = FUNC0 (n+1, sizeof (char *));
  FUNC1 (strv != NULL);

  n = 0;
  while((p = FUNC4(n ? NULL : _str, _delim)) != NULL)
    strv[n++] = FUNC3(p);

  FUNC2(_str);

  return strv;
}