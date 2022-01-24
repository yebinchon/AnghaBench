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
typedef  scalar_t__ gcry_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  hmac; int /*<<< orphan*/  seal; } ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GCRY_MD_FLAG_HMAC ; 
 int /*<<< orphan*/  GCRY_MD_SHA256 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(JournalFile *f) {
        gcry_error_t e;

        if (!f->seal)
                return 0;

        FUNC1(true);

        e = FUNC0(&f->hmac, GCRY_MD_SHA256, GCRY_MD_FLAG_HMAC);
        if (e != 0)
                return -EOPNOTSUPP;

        return 0;
}