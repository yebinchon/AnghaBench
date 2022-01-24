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
typedef  int /*<<< orphan*/  strm_value ;
typedef  scalar_t__ strm_string ;
typedef  int /*<<< orphan*/  strm_state ;
typedef  int strm_int ;
typedef  scalar_t__ strm_array ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (char*,int) ; 
 scalar_t__ strm_str_null ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

strm_string
FUNC20(strm_value v)
{
  if (FUNC16(v)) {
    strm_string str = FUNC19(v);
    return FUNC4(str, FUNC5(str));
  }
  else if (FUNC7(v)) {
    strm_state* ns = FUNC10(v);
    char *buf = FUNC1(32);
    strm_int i, bi = 0, capa = 32;
    strm_array a = FUNC18(v);

    if (buf == NULL) return STRM_NG;
    buf[bi++] = '[';
    if (ns) {
      strm_string name = FUNC12(ns);
      strm_int nlen = FUNC13(name);

      if (name != strm_str_null) {
        buf[bi++] = '@';
        if (bi+nlen+2 > capa) {
          char* p;
          capa *= 2;
          p = FUNC3(buf, capa);
          if (p == NULL) {
            FUNC0(buf);
            return STRM_NG;
          }
          buf = p;
        }
        FUNC2(buf+bi, FUNC15(name), nlen);
        bi += nlen;
        if (FUNC9(a) > 0) {
          buf[bi++] = ' ';
        }
      }
    }
    for (i=0; i<FUNC9(a); i++) {
      strm_string str = FUNC20(FUNC11(a)[i]);
      strm_string key = (FUNC8(a) &&
                         FUNC16(FUNC11(FUNC8(a))[i])) ?
        FUNC19(FUNC11(FUNC8(a))[i]) : strm_str_null;
      strm_int slen = (key ? (FUNC13(key)+1) : 0) + FUNC13(str) + 3;

      if (bi+slen > capa) {
        capa *= 2;
        buf = FUNC3(buf, capa);
      }
      if (i > 0) {
        buf[bi++] = ',';
        buf[bi++] = ' ';
      }
      if (key) {
        if (!FUNC6(key)) {
          key = FUNC4(key, FUNC5(key));
        }
        FUNC2(buf+bi, FUNC15(key), FUNC13(key));
        bi += FUNC13(key);
        buf[bi++] = ':';
      }
      FUNC2(buf+bi, FUNC15(str), FUNC13(str));
      bi += FUNC13(str);
    }
    buf[bi++] = ']';
    return FUNC14(buf, bi);
  }
  else {
    return FUNC17(v);
  }
}