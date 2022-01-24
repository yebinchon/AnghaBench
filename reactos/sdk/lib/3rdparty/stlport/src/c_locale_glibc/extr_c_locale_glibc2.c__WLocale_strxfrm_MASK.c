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
typedef  scalar_t__ wchar_t ;
struct _Locale_collate {int dummy; } ;
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__ const*,size_t) ; 
 size_t FUNC3 (scalar_t__*,scalar_t__ const*,size_t,int /*<<< orphan*/ ) ; 

size_t FUNC4( struct _Locale_collate *__loc,
                        wchar_t *dest, size_t dest_n,
                        const wchar_t *src, size_t src_n )
{
  const wchar_t *real_src;
  wchar_t *buf = NULL;
  size_t result;

  if (src_n == 0)
  {
    if (dest != NULL) dest[0] = 0;
    return 0;
  }
  if (src[src_n] != 0) {
    buf = FUNC1((src_n + 1) * sizeof(wchar_t));
    FUNC2(buf, src, src_n);
    buf[src_n] = 0;
    real_src = buf;
  }
  else
    real_src = src;
  result = FUNC3(dest, real_src, dest_n, (locale_t)__loc);
  if (buf != NULL) FUNC0(buf);
  return result;
}