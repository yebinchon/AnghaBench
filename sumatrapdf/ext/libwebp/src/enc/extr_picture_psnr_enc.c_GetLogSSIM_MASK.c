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

/* Variables and functions */
 double kMinDistortion_dB ; 
 double FUNC0 (int) ; 

__attribute__((used)) static double FUNC1(double v, double size) {
  v = (size > 0.) ? v / size : 1.;
  return (v < 1.) ? -10.0 * FUNC0(1. - v) : kMinDistortion_dB;
}