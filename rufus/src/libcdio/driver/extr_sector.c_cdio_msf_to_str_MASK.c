#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int m; int s; int f; } ;
typedef  TYPE_1__ msf_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int,int,int) ; 
 char* FUNC1 (char*) ; 

char *
FUNC2 (const msf_t *msf)
{
  char buf[16];

  FUNC0 (buf, sizeof (buf), "%2.2x:%2.2x:%2.2x", msf->m, msf->s, msf->f);
  return FUNC1 (buf);
}