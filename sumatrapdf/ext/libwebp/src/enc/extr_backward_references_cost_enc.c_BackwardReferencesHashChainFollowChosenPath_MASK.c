#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  VP8LHashChain ;
typedef  int /*<<< orphan*/  VP8LColorCache ;
struct TYPE_5__ {int /*<<< orphan*/  error_; } ;
typedef  TYPE_1__ VP8LBackwardRefs ;
typedef  int /*<<< orphan*/  PixOrCopy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int FUNC9 (int /*<<< orphan*/  const* const,int) ; 

__attribute__((used)) static int FUNC10(
    const uint32_t* const argb, int cache_bits,
    const uint16_t* const chosen_path, int chosen_path_size,
    const VP8LHashChain* const hash_chain, VP8LBackwardRefs* const refs) {
  const int use_color_cache = (cache_bits > 0);
  int ix;
  int i = 0;
  int ok = 0;
  int cc_init = 0;
  VP8LColorCache hashers;

  if (use_color_cache) {
    cc_init = FUNC7(&hashers, cache_bits);
    if (!cc_init) goto Error;
  }

  FUNC4(refs);
  for (ix = 0; ix < chosen_path_size; ++ix) {
    const int len = chosen_path[ix];
    if (len != 1) {
      int k;
      const int offset = FUNC9(hash_chain, i);
      FUNC3(refs, FUNC1(offset, len));
      if (use_color_cache) {
        for (k = 0; k < len; ++k) {
          FUNC8(&hashers, argb[i + k]);
        }
      }
      i += len;
    } else {
      PixOrCopy v;
      const int idx =
          use_color_cache ? FUNC6(&hashers, argb[i]) : -1;
      if (idx >= 0) {
        // use_color_cache is true and hashers contains argb[i]
        // push pixel as a color cache index
        v = FUNC0(idx);
      } else {
        if (use_color_cache) FUNC8(&hashers, argb[i]);
        v = FUNC2(argb[i]);
      }
      FUNC3(refs, v);
      ++i;
    }
  }
  ok = !refs->error_;
 Error:
  if (cc_init) FUNC5(&hashers);
  return ok;
}