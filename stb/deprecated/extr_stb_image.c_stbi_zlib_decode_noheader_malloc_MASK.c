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
struct TYPE_3__ {char* zout; char* zout_start; int /*<<< orphan*/ * zbuffer_end; int /*<<< orphan*/ * zbuffer; } ;
typedef  TYPE_1__ zbuf ;
typedef  int /*<<< orphan*/  stbi__uint8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 

char *FUNC3(char const *buffer, int len, int *outlen)
{
   zbuf a;
   char *p = (char *) FUNC2(16384);
   if (p == NULL) return NULL;
   a.zbuffer = (stbi__uint8 *) buffer;
   a.zbuffer_end = (stbi__uint8 *) buffer+len;
   if (FUNC0(&a, p, 16384, 1, 0)) {
      if (outlen) *outlen = (int) (a.zout - a.zout_start);
      return a.zout_start;
   } else {
      FUNC1(a.zout_start);
      return NULL;
   }
}