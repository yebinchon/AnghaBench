#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * vtbl; } ;
typedef  TYPE_2__ stgmed_obj_t ;
struct TYPE_10__ {int /*<<< orphan*/  IUnknown_iface; } ;
typedef  TYPE_3__ stgmed_buf_t ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_2__ stgmed_obj; TYPE_3__* buf; TYPE_1__ IStream_iface; } ;
typedef  TYPE_4__ ProtocolStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProtocolStreamVtbl ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_4__* FUNC2 (int) ; 
 int /*<<< orphan*/  stgmed_stream_vtbl ; 

__attribute__((used)) static stgmed_obj_t *FUNC3(stgmed_buf_t *buf)
{
    ProtocolStream *ret = FUNC2(sizeof(ProtocolStream));

    ret->stgmed_obj.vtbl = &stgmed_stream_vtbl;
    ret->IStream_iface.lpVtbl = &ProtocolStreamVtbl;
    ret->ref = 1;

    FUNC0(&buf->IUnknown_iface);
    ret->buf = buf;

    FUNC1();

    return &ret->stgmed_obj;
}