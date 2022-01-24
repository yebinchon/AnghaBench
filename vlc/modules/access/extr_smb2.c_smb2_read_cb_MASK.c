#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smb2_context {int dummy; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ read; } ;
struct TYPE_6__ {int eof; TYPE_2__ res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_3__* sys ; 

__attribute__((used)) static void
FUNC2(struct smb2_context *smb2, int status, void *data,
             void *private_data)
{
    FUNC1(data);
    FUNC0();

    if (status == 0)
        sys->eof = true;
    else
        sys->res.read.len = status;
}