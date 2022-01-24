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
struct TYPE_4__ {int /*<<< orphan*/  iskey; scalar_t__ iscompr; } ;
typedef  TYPE_1__ raxNode ;
typedef  int /*<<< orphan*/  rax ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned char*) ; 
 void* FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t,TYPE_1__**,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 void* raxNotFound ; 

void *FUNC3(rax *rax, unsigned char *s, size_t len) {
    raxNode *h;

    FUNC0("### Lookup: %.*s\n", (int)len, s);
    int splitpos = 0;
    size_t i = FUNC2(rax,s,len,&h,NULL,&splitpos,NULL);
    if (i != len || (h->iscompr && splitpos != 0) || !h->iskey)
        return raxNotFound;
    return FUNC1(h);
}