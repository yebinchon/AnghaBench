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
struct tgl_state {int dummy; } ;
struct tgl_message {int dummy; } ;

/* Variables and functions */
 struct tgl_state* TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tgl_state*,void*,int) ; 

void FUNC2 (struct tgl_state *TLSR, void *extra, int success, int num, struct tgl_message *ML[]) {
  FUNC0 (TLS == TLSR);
  FUNC1 (TLSR, extra, success);
}