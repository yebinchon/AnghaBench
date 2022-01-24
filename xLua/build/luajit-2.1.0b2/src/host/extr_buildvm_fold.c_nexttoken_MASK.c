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
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 char** ir_names ; 
 char** ircall_names ; 
 char** irfield_names ; 
 char** irfpm_names ; 
 char** irt_names ; 
 int lineno ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static uint32_t FUNC5(char **pp, int allowlit, int allowany)
{
  char *p = *pp;
  if (p) {
    uint32_t i;
    char *q = FUNC2(p, ' ');
    if (q) *q++ = '\0';
    *pp = q;
    if (allowlit && !FUNC4(p, "IRFPM_", 6)) {
      for (i = 0; irfpm_names[i]; i++)
	if (!FUNC3(irfpm_names[i], p+6))
	  return i;
    } else if (allowlit && !FUNC4(p, "IRFL_", 5)) {
      for (i = 0; irfield_names[i]; i++)
	if (!FUNC3(irfield_names[i], p+5))
	  return i;
    } else if (allowlit && !FUNC4(p, "IRCALL_", 7)) {
      for (i = 0; ircall_names[i]; i++)
	if (!FUNC3(ircall_names[i], p+7))
	  return i;
    } else if (allowlit && !FUNC4(p, "IRCONV_", 7)) {
      for (i = 0; irt_names[i]; i++) {
	const char *r = FUNC2(p+7, '_');
	if (r && !FUNC4(irt_names[i], p+7, r-(p+7))) {
	  uint32_t j;
	  for (j = 0; irt_names[j]; j++)
	    if (!FUNC3(irt_names[j], r+1))
	      return (i << 5) + j;
	}
      }
    } else if (allowlit && *p >= '0' && *p <= '9') {
      for (i = 0; *p >= '0' && *p <= '9'; p++)
	i = i*10 + (*p - '0');
      if (*p == '\0')
	return i;
    } else if (allowany && !FUNC3("any", p)) {
      return allowany;
    } else {
      for (i = 0; ir_names[i]; i++)
	if (!FUNC3(ir_names[i], p))
	  return i;
    }
    FUNC1(stderr, "Error: bad fold definition token \"%s\" at line %d\n", p, lineno);
    FUNC0(1);
  }
  return 0;
}