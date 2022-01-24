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
typedef  int /*<<< orphan*/  rofi_int_matcher ;
struct TYPE_4__ {int (* _token_match ) (TYPE_1__ const*,int /*<<< orphan*/ **,unsigned int) ;} ;
typedef  TYPE_1__ Mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ **,unsigned int) ; 

int FUNC2 ( const Mode *mode, rofi_int_matcher **tokens, unsigned int selected_line )
{
    FUNC0 ( mode != NULL );
    FUNC0 ( mode->_token_match != NULL );
    return mode->_token_match ( mode, tokens, selected_line );
}