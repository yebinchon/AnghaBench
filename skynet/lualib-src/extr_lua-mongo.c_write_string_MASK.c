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
struct buffer {char* ptr; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC2(struct buffer *b, const char *key, size_t sz) {
	FUNC0(b,sz+1);
	FUNC1(b->ptr + b->size, key, sz);
	b->ptr[b->size+sz] = '\0';
	b->size+=sz+1;
}