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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Integer ;
typedef  int KOption ;
typedef  int /*<<< orphan*/  Header ;

/* Variables and functions */
#define  Kstring 129 
#define  Kzstr 128 
 int MAXSIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,char const**,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  Header h;
  const char *fmt = FUNC4(L, 1);  /* format string */
  size_t totalsize = 0;  /* accumulate total size of result */
  FUNC1(L, &h);
  while (*fmt != '\0') {
    int size, ntoalign;
    KOption opt = FUNC0(&h, totalsize, &fmt, &size, &ntoalign);
    size += ntoalign;  /* total space used by option */
    FUNC2(L, totalsize <= MAXSIZE - size, 1,
                     "format result too large");
    totalsize += size;
    switch (opt) {
      case Kstring:  /* strings with length count */
      case Kzstr:    /* zero-terminated string */
        FUNC3(L, 1, "variable-length format");
        /* call never return, but to avoid warnings: *//* FALLTHROUGH */
      default:  break;
    }
  }
  FUNC5(L, (lua_Integer)totalsize);
  return 1;
}