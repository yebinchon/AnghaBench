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
struct TYPE_9__ {TYPE_2__* pStubDesc; } ;
struct TYPE_6__ {size_t type_offset; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_7__ {unsigned char const* pFormatTypes; } ;
typedef  TYPE_3__ NDR_PARAM_OIF ;

/* Variables and functions */
 TYPE_3__* FUNC0 (unsigned int*) ; 
 TYPE_4__* FUNC1 () ; 

__attribute__((used)) static const unsigned char *FUNC2( size_t *size )
{
    unsigned int nb_params;
    const NDR_PARAM_OIF *params = FUNC0( &nb_params );

    *size = params[nb_params - 1].u.type_offset;
    return FUNC1()->pStubDesc->pFormatTypes;
}