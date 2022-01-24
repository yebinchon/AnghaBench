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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  tmpbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,int) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 

char *
FUNC4 (const char pathname[], uint16_t version)
{
  char tmpbuf[1024] = { 0, };

  FUNC0 (FUNC3 (pathname) < (sizeof (tmpbuf) - sizeof (";65535")));

  FUNC1 (tmpbuf, sizeof(tmpbuf), "%s;%d", pathname, version);

  return FUNC2 (tmpbuf);
}