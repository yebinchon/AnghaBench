#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t n_decrypted; TYPE_1__* decrypted; } ;
struct TYPE_8__ {TYPE_2__* name; scalar_t__ device; int /*<<< orphan*/  relinquished; } ;
typedef  TYPE_1__ DecryptedPartition ;
typedef  TYPE_2__ DecryptedImage ;

/* Variables and functions */
 int FUNC0 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,TYPE_2__*) ; 

DecryptedImage* FUNC4(DecryptedImage* d) {
#if HAVE_LIBCRYPTSETUP
        size_t i;
        int r;

        if (!d)
                return NULL;

        for (i = 0; i < d->n_decrypted; i++) {
                DecryptedPartition *p = d->decrypted + i;

                if (p->device && p->name && !p->relinquished) {
                        r = crypt_deactivate(p->device, p->name);
                        if (r < 0)
                                log_debug_errno(r, "Failed to deactivate encrypted partition %s", p->name);
                }

                if (p->device)
                        crypt_free(p->device);
                free(p->name);
        }

        free(d);
#endif
        return NULL;
}