#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/ * ks32; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ks32; } ;
struct TYPE_7__ {TYPE_2__ decr_ks; int /*<<< orphan*/  nr; TYPE_1__ encr_ks; } ;
typedef  TYPE_3__ aes_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void
FUNC2(aes_key_t *key, const uint32_t *keyarr32, int keybits)
{
	key->nr = FUNC1(&(key->encr_ks.ks32[0]), keyarr32,
	    keybits);
	key->nr = FUNC0(&(key->decr_ks.ks32[0]), keyarr32,
	    keybits);
}