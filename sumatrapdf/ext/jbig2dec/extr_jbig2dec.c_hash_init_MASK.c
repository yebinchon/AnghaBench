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
struct TYPE_3__ {int /*<<< orphan*/ * hash_ctx; scalar_t__ hash; } ;
typedef  TYPE_1__ jbig2dec_params_t ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(jbig2dec_params_t *params)
{
    params->hash_ctx = (SHA1_CTX *) FUNC2(sizeof(SHA1_CTX));
    if (params->hash_ctx == NULL) {
        FUNC1(stderr, "unable to allocate hash state\n");
        params->hash = 0;
        return;
    } else {
        FUNC0(params->hash_ctx);
    }
}