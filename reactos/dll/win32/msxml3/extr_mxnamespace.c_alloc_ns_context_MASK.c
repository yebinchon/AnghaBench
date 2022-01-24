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
struct nscontext {int max_alloc; struct nscontext* ns; void* uri; void* prefix; scalar_t__ count; } ;

/* Variables and functions */
 int DEFAULT_PREFIX_ALLOC_COUNT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nscontext*) ; 
 int /*<<< orphan*/  xmlW ; 
 int /*<<< orphan*/  xmluriW ; 

__attribute__((used)) static struct nscontext* FUNC3(void)
{
    struct nscontext *ctxt;

    ctxt = FUNC1(sizeof(*ctxt));
    if (!ctxt) return NULL;

    ctxt->count = 0;
    ctxt->max_alloc = DEFAULT_PREFIX_ALLOC_COUNT;
    ctxt->ns = FUNC1(ctxt->max_alloc*sizeof(*ctxt->ns));
    if (!ctxt->ns)
    {
        FUNC2(ctxt);
        return NULL;
    }

    /* first allocated prefix is always 'xml' */
    ctxt->ns[0].prefix = FUNC0(xmlW);
    ctxt->ns[0].uri = FUNC0(xmluriW);
    ctxt->count++;
    if (!ctxt->ns[0].prefix || !ctxt->ns[0].uri)
    {
        FUNC2(ctxt->ns);
        FUNC2(ctxt);
        return NULL;
    }

    return ctxt;
}