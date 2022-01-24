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
struct tiff {scalar_t__ order; } ;

/* Variables and functions */
 scalar_t__ TII ; 
 unsigned int FUNC0 (struct tiff*) ; 

__attribute__((used)) static inline unsigned FUNC1(struct tiff *tiff)
{
	unsigned a = FUNC0(tiff);
	unsigned b = FUNC0(tiff);
	unsigned c = FUNC0(tiff);
	unsigned d = FUNC0(tiff);
	if (tiff->order == TII)
		return (d << 24) | (c << 16) | (b << 8) | a;
	return (a << 24) | (b << 16) | (c << 8) | d;
}