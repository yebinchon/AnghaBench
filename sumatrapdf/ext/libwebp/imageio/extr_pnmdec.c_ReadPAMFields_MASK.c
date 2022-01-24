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
struct TYPE_3__ {int seen_flags; int width; int height; int depth; int max_value; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PNMInfo ;

/* Variables and functions */
 int ALL_NEEDED_FLAGS ; 
 int DEPTH_FLAG ; 
 size_t FUNC0 (char*) ; 
 int HEIGHT_FLAG ; 
 int MAXVAL_FLAG ; 
 int /*<<< orphan*/  MAX_LINE_SIZE ; 
 size_t FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,char*,size_t*) ; 
 int TUPLE_FLAG ; 
 int WIDTH_FLAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static size_t FUNC9(PNMInfo* const info, size_t off) {
  char out[MAX_LINE_SIZE + 1];
  size_t out_size;
  int tmp;
  int expected_depth = -1;
  FUNC2(info != NULL);
  while (1) {
    off = FUNC1(info->data, off, info->data_size, out, &out_size);
    if (off == 0) return 0;
    if (FUNC6(out, "WIDTH %d", &tmp) == 1) {
      if (info->seen_flags & WIDTH_FLAG) return FUNC0("WIDTH");
      info->seen_flags |= WIDTH_FLAG;
      info->width = tmp;
    } else if (FUNC6(out, "HEIGHT %d", &tmp) == 1) {
      if (info->seen_flags & HEIGHT_FLAG) return FUNC0("HEIGHT");
      info->seen_flags |= HEIGHT_FLAG;
      info->height = tmp;
    } else if (FUNC6(out, "DEPTH %d", &tmp) == 1) {
      if (info->seen_flags & DEPTH_FLAG) return FUNC0("DEPTH");
      info->seen_flags |= DEPTH_FLAG;
      info->depth = tmp;
    } else if (FUNC6(out, "MAXVAL %d", &tmp) == 1) {
      if (info->seen_flags & MAXVAL_FLAG) return FUNC0("MAXVAL");
      info->seen_flags |= MAXVAL_FLAG;
      info->max_value = tmp;
    } else if (!FUNC7(out, "TUPLTYPE RGB_ALPHA")) {
      expected_depth = 4;
      info->seen_flags |= TUPLE_FLAG;
    } else if (!FUNC7(out, "TUPLTYPE RGB")) {
      expected_depth = 3;
      info->seen_flags |= TUPLE_FLAG;
    } else if (!FUNC7(out, "TUPLTYPE GRAYSCALE")) {
      expected_depth = 1;
      info->seen_flags |= TUPLE_FLAG;
    } else if (!FUNC7(out, "ENDHDR")) {
      break;
    } else {
      static const char kEllipsis[] = " ...";
      int i;
      if (out_size > 20) FUNC5(out + 20 - FUNC8(kEllipsis), kEllipsis);
      for (i = 0; i < (int)FUNC8(out); ++i) {
        // isprint() might trigger a "char-subscripts" warning if given a char.
        if (!FUNC4((int)out[i])) out[i] = ' ';
      }
      FUNC3(stderr, "PAM header error: unrecognized entry [%s]\n", out);
      return 0;
    }
  }
  if (!(info->seen_flags & ALL_NEEDED_FLAGS)) {
    FUNC3(stderr, "PAM header error: missing tags%s%s%s%s\n",
            (info->seen_flags & WIDTH_FLAG) ? "" : " WIDTH",
            (info->seen_flags & HEIGHT_FLAG) ? "" : " HEIGHT",
            (info->seen_flags & DEPTH_FLAG) ? "" : " DEPTH",
            (info->seen_flags & MAXVAL_FLAG) ? "" : " MAXVAL");
    return 0;
  }
  if (expected_depth != -1 && info->depth != expected_depth) {
    FUNC3(stderr, "PAM header error: expected DEPTH %d but got DEPTH %d\n",
            expected_depth, info->depth);
    return 0;
  }
  return off;
}