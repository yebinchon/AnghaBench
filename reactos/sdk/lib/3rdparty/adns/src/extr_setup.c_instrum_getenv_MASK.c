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
typedef  int /*<<< orphan*/  adns_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC1 (char const*) ; 

__attribute__((used)) static const char *FUNC2(adns_state ads, const char *envvar) {
  const char *value;

  value= FUNC1(envvar);
  if (!value) FUNC0(ads,-1,0,"environment variable %s not set",envvar);
  else FUNC0(ads,-1,0,"environment variable %s set to `%s'",envvar,value);
  return value;
}