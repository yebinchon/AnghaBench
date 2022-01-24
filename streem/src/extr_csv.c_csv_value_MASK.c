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
typedef  int strm_int ;
typedef  enum csv_type { ____Placeholder_csv_type } csv_type ;

/* Variables and functions */
#define  TYPE_FLOAT 131 
#define  TYPE_INT 130 
#define  TYPE_NUM 129 
 int TYPE_STR ; 
 int TYPE_TIME ; 
#define  TYPE_UNSPC 128 
 int /*<<< orphan*/  FUNC0 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 

__attribute__((used)) static strm_value
FUNC4(const char* p, strm_int len, enum csv_type ftype)
{
  const char *s = p;
  const char *send = s+len;
  long i=0;
  double f, pow = 1;
  enum csv_type type = TYPE_STR;

  switch (ftype) {
  case TYPE_UNSPC:
  case TYPE_NUM:
    /* skip preceding white spaces */
    while (FUNC1((int)*s)) s++;

    /* check if numbers */
    while (s<send) {
      switch (*s) {
      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9':
        if (type == TYPE_STR) type = TYPE_INT;
        i = i*10 + (*s - '0');
        pow *= 10;
        break;
      case '.':
        if (type == TYPE_FLOAT) { /* second dot */
          type = TYPE_TIME;
          break;
        }
        type = TYPE_FLOAT;
        f = i;
        i = 0;
        pow = 1;
        break;
      default:
        type = TYPE_UNSPC;
        break;
      }
      s++;
    }
  default:
    break;
  }

  switch (type) {
  case TYPE_INT:
    return FUNC3(i);
  case TYPE_FLOAT:
    f += i / pow;
    return FUNC2(f);
  default:
    return FUNC0(p, len, ftype);
  }
  /* not reached */
}