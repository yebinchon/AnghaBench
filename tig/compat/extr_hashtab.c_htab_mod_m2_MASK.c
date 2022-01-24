#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct prime_ent {int /*<<< orphan*/  shift; int /*<<< orphan*/  inv_m2; scalar_t__ prime; } ;
typedef  TYPE_1__* htab_t ;
typedef  scalar_t__ hashval_t ;
struct TYPE_3__ {size_t size_prime_index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct prime_ent* prime_tab ; 

__attribute__((used)) static inline hashval_t
FUNC1 (hashval_t hash, htab_t htab)
{
  const struct prime_ent *p = &prime_tab[htab->size_prime_index];
  return 1 + FUNC0 (hash, p->prime - 2, p->inv_m2, p->shift);
}