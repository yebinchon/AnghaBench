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
struct timeval {double tv_sec; double tv_usec; } ;
struct TYPE_6__ {double QuadPart; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 TYPE_2__ ticksPerSecond ; 

__attribute__((used)) static double FUNC3()
{
#ifdef _WIN32
  if (ticksPerSecond.QuadPart == 0)
  {
    QueryPerformanceFrequency(&ticksPerSecond);
  }
  LARGE_INTEGER current;
  QueryPerformanceCounter(&current);
  return (double)(current.QuadPart) / ticksPerSecond.QuadPart;
#else
  struct timeval current;
  FUNC2(&current, NULL);
  return (current.tv_sec + current.tv_usec/1000000.0);
#endif
}