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
struct timeval {long tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(struct timeval *tv_io, long ms) {
  struct timeval tmp;
  FUNC0(ms>=0);
  tmp= *tv_io;
  tmp.tv_usec += (ms%1000)*1000;
  tmp.tv_sec += ms/1000;
  if (tmp.tv_usec >= 1000000) { tmp.tv_sec++; tmp.tv_usec -= 1000000; }
  *tv_io= tmp;
}