#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stgmed_obj_t ;
struct TYPE_7__ {TYPE_5__* buf; } ;
typedef  TYPE_2__ stgmed_file_obj_t ;
struct TYPE_9__ {int /*<<< orphan*/  IUnknown_iface; scalar_t__ cache_file; } ;
struct TYPE_6__ {scalar_t__ lpszFileName; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pUnkForRelease; TYPE_1__ u; int /*<<< orphan*/  tymed; } ;
typedef  TYPE_3__ STGMEDIUM ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  INET_E_DATA_NOT_AVAILABLE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TYMED_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 

__attribute__((used)) static HRESULT FUNC2(stgmed_obj_t *obj, STGMEDIUM *stgmed)
{
    stgmed_file_obj_t *file_obj = (stgmed_file_obj_t*)obj;

    if(!file_obj->buf->cache_file) {
        FUNC0("cache_file not set\n");
        return INET_E_DATA_NOT_AVAILABLE;
    }

    FUNC1(file_obj->buf);

    stgmed->tymed = TYMED_FILE;
    stgmed->u.lpszFileName = file_obj->buf->cache_file;
    stgmed->pUnkForRelease = &file_obj->buf->IUnknown_iface;

    return S_OK;
}