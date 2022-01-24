#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  blocks; int /*<<< orphan*/ * opaque; int /*<<< orphan*/  ssrc; } ;
typedef  TYPE_2__ rtp_source_t ;
struct TYPE_9__ {unsigned int ptc; TYPE_1__* ptv; } ;
typedef  TYPE_3__ rtp_session_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (demux_t *demux, const rtp_session_t *session,
                    rtp_source_t *source)
{
    FUNC2 (demux, "removing RTP source (%08x)", source->ssrc);

    for (unsigned i = 0; i < session->ptc; i++)
        session->ptv[i].destroy (demux, source->opaque[i]);
    FUNC0 (source->blocks);
    FUNC1 (source);
}