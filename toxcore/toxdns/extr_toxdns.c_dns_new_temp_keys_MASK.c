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
struct TYPE_3__ {int /*<<< orphan*/  shared_key; int /*<<< orphan*/  temp_sk; int /*<<< orphan*/  server_public_key; int /*<<< orphan*/  temp_pk; int /*<<< orphan*/  nonce_start; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_1__ DNS_Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(DNS_Object *d)
{
    d->nonce = d->nonce_start = FUNC2();
    FUNC0(d->temp_pk, d->temp_sk);
    FUNC1(d->server_public_key, d->temp_sk, d->shared_key);
}