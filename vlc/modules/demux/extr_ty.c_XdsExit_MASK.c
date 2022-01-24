#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  psz_rating; int /*<<< orphan*/  psz_name; } ;
struct TYPE_8__ {int /*<<< orphan*/  psz_rating; int /*<<< orphan*/  psz_name; } ;
struct TYPE_7__ {TYPE_1__ future; TYPE_3__ current; int /*<<< orphan*/  psz_channel_number; int /*<<< orphan*/  psz_channel_call_letter; int /*<<< orphan*/  psz_channel_name; } ;
struct TYPE_9__ {TYPE_2__ meta; } ;
typedef  TYPE_4__ xds_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( xds_t *h )
{
    /* */
    FUNC0( h->meta.psz_channel_name );
    FUNC0( h->meta.psz_channel_call_letter );
    FUNC0( h->meta.psz_channel_number );

    /* */
    FUNC0( h->meta.current.psz_name );
    FUNC0( h->meta.current.psz_rating );
    /* */
    FUNC0( h->meta.future.psz_name );
    FUNC0( h->meta.future.psz_rating );
}