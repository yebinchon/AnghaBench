#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double tv_usec; scalar_t__ tv_sec; } ;
struct rusage {TYPE_1__ ru_stime; } ;
typedef  scalar_t__ TimeType ;

/* Variables and functions */
 int /*<<< orphan*/  RUSAGE_SELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rusage*) ; 

__attribute__((used)) static TimeType FUNC1()
{
#ifdef _WIN32
  return 0;
#else
  struct rusage current;
  FUNC0(RUSAGE_SELF, &current);
  return (current.ru_stime.tv_sec + current.ru_stime.tv_usec/1000000.0);
#endif
}