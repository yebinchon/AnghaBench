#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  opj_marker_info_t ;
struct TYPE_4__ {int maxmarknum; int /*<<< orphan*/ * tile_index; int /*<<< orphan*/ * marker; scalar_t__ marknum; } ;
typedef  TYPE_1__ opj_codestream_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static opj_codestream_index_t* FUNC2(void)
{
    opj_codestream_index_t* cstr_index = (opj_codestream_index_t*)
                                         FUNC0(1, sizeof(opj_codestream_index_t));
    if (!cstr_index) {
        return NULL;
    }

    cstr_index->maxmarknum = 100;
    cstr_index->marknum = 0;
    cstr_index->marker = (opj_marker_info_t*)
                         FUNC0(cstr_index->maxmarknum, sizeof(opj_marker_info_t));
    if (!cstr_index-> marker) {
        FUNC1(cstr_index);
        return NULL;
    }

    cstr_index->tile_index = NULL;

    return cstr_index;
}