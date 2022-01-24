#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pos; scalar_t__ buffer; } ;
typedef  TYPE_1__ ME_OutStream ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ STREAMOUT_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*,int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static BOOL
FUNC5(ME_OutStream *pStream, const char *buffer, int len)
{
  while (len) {
    int space = STREAMOUT_BUFFER_SIZE - pStream->pos;
    int fit = FUNC4(space, len);

    FUNC1("%u:%u:%s\n", pStream->pos, fit, FUNC2(buffer,fit));
    FUNC3(pStream->buffer + pStream->pos, buffer, fit);
    len -= fit;
    buffer += fit;
    pStream->pos += fit;
    if (pStream->pos == STREAMOUT_BUFFER_SIZE) {
      if (!FUNC0(pStream))
        return FALSE;
    }
  }
  return TRUE;
}