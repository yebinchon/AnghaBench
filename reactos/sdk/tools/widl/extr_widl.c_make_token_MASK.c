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
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (char const*,char) ; 
 char FUNC2 (char) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(const char *name)
{
  char *token;
  char *slash;
  int i;

  slash = FUNC1(name, '/');
  if(!slash)
    slash = FUNC1(name, '\\');

  if (slash) name = slash + 1;

  token = FUNC3(name);
  for (i=0; token[i]; i++) {
    if (!FUNC0(token[i])) token[i] = '_';
    else token[i] = FUNC2(token[i]);
  }
  return token;
}