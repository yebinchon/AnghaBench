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
struct TYPE_4__ {scalar_t__ block_count_hor; scalar_t__ block_count_ver; int /*<<< orphan*/ ** data_blocks; scalar_t__ block_height; scalar_t__ block_width; scalar_t__ height; scalar_t__ width; } ;
typedef  TYPE_1__ opj_sparse_array_int32_t ;
typedef  scalar_t__ OPJ_UINT32 ;
typedef  int /*<<< orphan*/  OPJ_INT32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (scalar_t__,scalar_t__) ; 

opj_sparse_array_int32_t* FUNC3(OPJ_UINT32 width,
        OPJ_UINT32 height,
        OPJ_UINT32 block_width,
        OPJ_UINT32 block_height)
{
    opj_sparse_array_int32_t* sa;

    if (width == 0 || height == 0 || block_width == 0 || block_height == 0) {
        return NULL;
    }
    if (block_width > ((OPJ_UINT32)~0U) / block_height / sizeof(OPJ_INT32)) {
        return NULL;
    }

    sa = (opj_sparse_array_int32_t*) FUNC0(1,
            sizeof(opj_sparse_array_int32_t));
    sa->width = width;
    sa->height = height;
    sa->block_width = block_width;
    sa->block_height = block_height;
    sa->block_count_hor = FUNC2(width, block_width);
    sa->block_count_ver = FUNC2(height, block_height);
    if (sa->block_count_hor > ((OPJ_UINT32)~0U) / sa->block_count_ver) {
        FUNC1(sa);
        return NULL;
    }
    sa->data_blocks = (OPJ_INT32**) FUNC0(sizeof(OPJ_INT32*),
                      sa->block_count_hor * sa->block_count_ver);
    if (sa->data_blocks == NULL) {
        FUNC1(sa);
        return NULL;
    }

    return sa;
}