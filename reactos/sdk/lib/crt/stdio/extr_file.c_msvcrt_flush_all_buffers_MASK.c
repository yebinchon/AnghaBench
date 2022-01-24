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
struct TYPE_4__ {int _flag; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int MSVCRT_stream_idx ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(int mask)
{
  int i, num_flushed = 0;
  FILE *file;

  FUNC0();
  for (i = 0; i < MSVCRT_stream_idx; i++) {
    file = FUNC4(i);

    if (file->_flag)
    {
      if(file->_flag & mask) {
	FUNC3(file);
        num_flushed++;
      }
    }
  }
  FUNC2();

  FUNC1(":flushed (%d) handles\n",num_flushed);
  return num_flushed;
}