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
typedef  int /*<<< orphan*/  stbi__uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static stbi__uint8 *FUNC1(stbi__uint8 *out, stbi__uint8 *in_near, stbi__uint8 *in_far, int w, int hs)
{
   FUNC0(*out);
   FUNC0(*in_far);
   FUNC0(w);
   FUNC0(hs);
   return in_near;
}