#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t size; int /*<<< orphan*/  constructor; int /*<<< orphan*/  name; int /*<<< orphan*/  la; } ;
typedef  TYPE_1__ kmem_cache_t ;
typedef  int /*<<< orphan*/  kmem_cache_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

kmem_cache_t *
FUNC4(
    const char *    name,
    size_t          size,
    size_t          offset,
    unsigned long   flags,
    kmem_cache_cb_t ctor
)
{
    kmem_cache_t *kc = NULL;

    kc = FUNC1(sizeof(kmem_cache_t), GFP_KERNEL);
    if (kc == NULL) {
        goto errorout;
    }

    FUNC2(kc, 0, sizeof(kmem_cache_t));
    FUNC0(
        &kc->la,
        NULL,
        NULL,
        0,
        size,
        'JBKC',
        0);

    kc->size = size;
    FUNC3(kc->name, name, 31);
    kc->constructor = ctor;

errorout:

    return kc;
}