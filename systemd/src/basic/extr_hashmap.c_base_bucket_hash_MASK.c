#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct siphash {int dummy; } ;
struct TYPE_7__ {TYPE_1__* hash_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* hash ) (void const*,struct siphash*) ;} ;
typedef  TYPE_2__ HashmapBase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct siphash*) ; 
 int /*<<< orphan*/  FUNC3 (struct siphash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const*,struct siphash*) ; 

__attribute__((used)) static unsigned FUNC5(HashmapBase *h, const void *p) {
        struct siphash state;
        uint64_t hash;

        FUNC3(&state, FUNC0(h));

        h->hash_ops->hash(p, &state);

        hash = FUNC2(&state);

        return (unsigned) (hash % FUNC1(h));
}