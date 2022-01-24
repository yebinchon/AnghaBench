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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char) ; 
 size_t FUNC6 (char*) ; 

char **FUNC7(int *argc, char **argv, char *param)
{
   char ** opts=NULL;
   int i,j=1;
   for (i=1; i < *argc; ++i) {
      if (argv[i][0] != '-') {
         argv[j++] = argv[i];
      } else {
         if (argv[i][1] == 0) { // plain - == don't parse further options
            ++i;
            while (i < *argc)
               argv[j++] = argv[i++];
            break;
         } else if (argv[i][1] == '-') {
            // copy argument through including initial '-' for clarity
            FUNC1(opts, FUNC4(argv[i]));
         } else {
            int k;
            char *q = argv[i];  // traverse options list
            for (k=1; q[k]; ++k) {
               char *s;
               if (FUNC5(param, q[k])) {  // does it take a parameter?
                  char *t = &q[k+1], z = q[k];
                  size_t len=0;
                  if (*t == 0) {
                     if (i == *argc-1) { // takes a parameter, but none found
                        *argc = 0;
                        FUNC2(opts);
                        return NULL;
                     }
                     t = argv[++i];
                  } else
                     k += (int) FUNC6(t);
                  len = FUNC6(t);
                  s = (char *) FUNC0(len+2);
                  if (!s) return NULL;
                  s[0] = z;
                  FUNC3(s+1, len+2, t);
               } else {
                  // no parameter
                  s = (char *) FUNC0(2);
                  if (!s) return NULL;
                  s[0] = q[k];
                  s[1] = 0;
               }
               FUNC1(opts, s);
            }
         }
      }
   }
   FUNC1(opts, NULL);
   *argc = j;
   return opts;
}