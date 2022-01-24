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
typedef  int /*<<< orphan*/  int8_t ;
typedef  enum strncpy_pad_check { ____Placeholder_strncpy_pad_check } strncpy_pad_check ;

/* Variables and functions */
#define  ISO9660_7BIT 131 
#define  ISO9660_ACHARS 130 
#define  ISO9660_DCHARS 129 
#define  ISO9660_NOCHECK 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,size_t) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 

char *
FUNC8(char dst[], const char src[], size_t len,
                    enum strncpy_pad_check _check)
{
  size_t rlen;

  FUNC0 (dst != NULL);
  FUNC0 (src != NULL);
  FUNC0 (len > 0);

  switch (_check)
    {
      int idx;
    case ISO9660_NOCHECK:
      break;

    case ISO9660_7BIT:
      for (idx = 0; src[idx]; idx++)
        if ((int8_t) src[idx] < 0)
          {
            FUNC2 ("string '%s' fails 7bit constraint (pos = %d)",
                      src, idx);
            break;
          }
      break;

    case ISO9660_ACHARS:
      for (idx = 0; src[idx]; idx++)
        if (!FUNC3 (src[idx]))
          {
            FUNC2 ("string '%s' fails a-character constraint (pos = %d)",
                      src, idx);
            break;
          }
      break;

    case ISO9660_DCHARS:
      for (idx = 0; src[idx]; idx++)
        if (!FUNC4 (src[idx]))
          {
            FUNC2 ("string '%s' fails d-character constraint (pos = %d)",
                      src, idx);
            break;
          }
      break;

    default:
      FUNC1 ();
      break;
    }

  rlen = FUNC6 (src);

  if (rlen > len)
    FUNC2 ("string '%s' is getting truncated to %d characters",
              src, (unsigned int) len);

  FUNC7 (dst, src, len);
  if (rlen < len)
    FUNC5(dst+rlen, ' ', len-rlen);
  return dst;
}