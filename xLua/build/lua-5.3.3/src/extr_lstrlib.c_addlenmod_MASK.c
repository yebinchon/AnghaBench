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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2 (char *form, const char *lenmod) {
  size_t l = FUNC1(form);
  size_t lm = FUNC1(lenmod);
  char spec = form[l - 1];
  FUNC0(form + l - 1, lenmod);
  form[l + lm - 1] = spec;
  form[l + lm] = '\0';
}