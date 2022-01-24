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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 unsigned int FUNC6 (unsigned char*,unsigned char*,unsigned int) ; 
 int FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 

char *FUNC9(char *filename, unsigned int *len)
{
   unsigned int n;
   char *q;
   unsigned char *p;
   FILE *f = FUNC8(filename, "rb");   if (f == NULL) return NULL;
   FUNC3(f, 0, SEEK_END);
   n = FUNC4(f);
   FUNC3(f, 0, SEEK_SET);
   p = (unsigned char * ) FUNC5(n); if (p == NULL) return NULL;
   FUNC1(p, 1, n, f);
   FUNC0(f);
   if (p == NULL) return NULL;
   if (p[0] != 0x57 || p[1] != 0xBc || p[2] || p[3]) { FUNC2(p); return NULL; }
   q = (char *) FUNC5(FUNC7(p)+1);
   if (!q) { FUNC2(p); return NULL; }
   *len = FUNC6((unsigned char *) q, p, n);
   if (*len) q[*len] = 0;
   FUNC2(p);
   return q;
}