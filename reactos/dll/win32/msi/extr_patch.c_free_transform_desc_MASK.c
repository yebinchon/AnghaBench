#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct transform_desc {struct transform_desc* upgrade_code; struct transform_desc* version_to; struct transform_desc* version_from; struct transform_desc* product_code_to; struct transform_desc* product_code_from; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct transform_desc*) ; 

__attribute__((used)) static void FUNC1( struct transform_desc *desc )
{
    FUNC0( desc->product_code_from );
    FUNC0( desc->product_code_to );
    FUNC0( desc->version_from );
    FUNC0( desc->version_to );
    FUNC0( desc->upgrade_code );
    FUNC0( desc );
}