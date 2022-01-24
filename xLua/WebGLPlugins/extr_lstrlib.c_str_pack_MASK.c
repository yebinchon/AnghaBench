#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int lua_Unsigned ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Number ;
typedef  int lua_Integer ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_6__ {float f; double d; int /*<<< orphan*/  buff; scalar_t__ n; } ;
struct TYPE_5__ {int /*<<< orphan*/  islittle; } ;
typedef  int KOption ;
typedef  TYPE_1__ Header ;
typedef  TYPE_2__ Ftypes ;

/* Variables and functions */
#define  Kchar 136 
#define  Kfloat 135 
#define  Kint 134 
#define  Knop 133 
#define  Kpaddalign 132 
#define  Kpadding 131 
#define  Kstring 130 
#define  Kuint 129 
#define  Kzstr 128 
 char LUAL_PACKPADBYTE ; 
 int NB ; 
 int SZINT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,size_t,char const**,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC16 (char const*) ; 

__attribute__((used)) static int FUNC17 (lua_State *L) {
  luaL_Buffer b;
  Header h;
  const char *fmt = FUNC11(L, 1);  /* format string */
  int arg = 1;  /* current argument to pack */
  size_t totalsize = 0;  /* accumulate total size of result */
  FUNC2(L, &h);
  FUNC14(L);  /* mark to separate arguments from string buffer */
  FUNC7(L, &b);
  while (*fmt != '\0') {
    int size, ntoalign;
    KOption opt = FUNC1(&h, totalsize, &fmt, &size, &ntoalign);
    totalsize += ntoalign + size;
    while (ntoalign-- > 0)
     FUNC3(&b, LUAL_PACKPADBYTE);  /* fill alignment */
    arg++;
    switch (opt) {
      case Kint: {  /* signed integers */
        lua_Integer n = FUNC8(L, arg);
        if (size < SZINT) {  /* need overflow check? */
          lua_Integer lim = (lua_Integer)1 << ((size * NB) - 1);
          FUNC6(L, -lim <= n && n < lim, arg, "integer overflow");
        }
        FUNC15(&b, (lua_Unsigned)n, h.islittle, size, (n < 0));
        break;
      }
      case Kuint: {  /* unsigned integers */
        lua_Integer n = FUNC8(L, arg);
        if (size < SZINT)  /* need overflow check? */
          FUNC6(L, (lua_Unsigned)n < ((lua_Unsigned)1 << (size * NB)),
                           arg, "unsigned overflow");
        FUNC15(&b, (lua_Unsigned)n, h.islittle, size, 0);
        break;
      }
      case Kfloat: {  /* floating-point options */
        volatile Ftypes u;
        char *buff = FUNC12(&b, size);
        lua_Number n = FUNC10(L, arg);  /* get argument */
        if (size == sizeof(u.f)) u.f = (float)n;  /* copy it into 'u' */
        else if (size == sizeof(u.d)) u.d = (double)n;
        else u.n = n;
        /* move 'u' to final result, correcting endianness if needed */
        FUNC0(buff, u.buff, size, h.islittle);
        FUNC5(&b, size);
        break;
      }
      case Kchar: {  /* fixed-size string */
        size_t len;
        const char *s = FUNC9(L, arg, &len);
        FUNC6(L, len <= (size_t)size, arg,
                         "string longer than given size");
        FUNC4(&b, s, len);  /* add string */
        while (len++ < (size_t)size)  /* pad extra space */
          FUNC3(&b, LUAL_PACKPADBYTE);
        break;
      }
      case Kstring: {  /* strings with length count */
        size_t len;
        const char *s = FUNC9(L, arg, &len);
        FUNC6(L, size >= (int)sizeof(size_t) ||
                         len < ((size_t)1 << (size * NB)),
                         arg, "string length does not fit in given size");
        FUNC15(&b, (lua_Unsigned)len, h.islittle, size, 0);  /* pack length */
        FUNC4(&b, s, len);
        totalsize += len;
        break;
      }
      case Kzstr: {  /* zero-terminated string */
        size_t len;
        const char *s = FUNC9(L, arg, &len);
        FUNC6(L, FUNC16(s) == len, arg, "string contains zeros");
        FUNC4(&b, s, len);
        FUNC3(&b, '\0');  /* add zero at the end */
        totalsize += len + 1;
        break;
      }
      case Kpadding: FUNC3(&b, LUAL_PACKPADBYTE);  /* FALLTHROUGH */
      case Kpaddalign: case Knop:
        arg--;  /* undo increment */
        break;
    }
  }
  FUNC13(&b);
  return 1;
}