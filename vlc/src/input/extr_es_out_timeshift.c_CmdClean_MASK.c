#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int i_type; } ;
typedef  TYPE_1__ ts_cmd_t ;

/* Variables and functions */
#define  C_ADD 131 
#define  C_CONTROL 130 
#define  C_DEL 129 
#define  C_SEND 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4( ts_cmd_t *p_cmd )
{
    switch( p_cmd->i_type )
    {
    case C_ADD:
        FUNC0( p_cmd );
        break;
    case C_SEND:
        FUNC2( p_cmd );
        break;
    case C_CONTROL:
        FUNC1( p_cmd );
        break;
    case C_DEL:
        break;
    default:
        FUNC3();
        break;
    }
}