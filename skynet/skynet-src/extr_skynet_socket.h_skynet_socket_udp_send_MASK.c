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
struct socket_sendbuffer {int dummy; } ;
struct skynet_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket_sendbuffer*,int,void const*,int) ; 
 int FUNC1 (struct skynet_context*,char const*,struct socket_sendbuffer*) ; 

__attribute__((used)) static inline int FUNC2(struct skynet_context *ctx, int id, const char * address, const void *buffer, int sz) {
	struct socket_sendbuffer tmp;
	FUNC0(&tmp, id, buffer, sz);
	return FUNC1(ctx, address, &tmp);
}