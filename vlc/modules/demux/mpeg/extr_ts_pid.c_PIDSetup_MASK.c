#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ts_pid_type_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_psip; int /*<<< orphan*/  p_si; int /*<<< orphan*/  p_stream; int /*<<< orphan*/  p_pmt; int /*<<< orphan*/  p_pat; } ;
struct TYPE_7__ {int i_pid; scalar_t__ i_refcount; int type; TYPE_1__ u; } ;
typedef  TYPE_2__ ts_pid_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
#define  TYPE_CAT 134 
#define  TYPE_FREE 133 
#define  TYPE_PAT 132 
#define  TYPE_PMT 131 
#define  TYPE_PSIP 130 
#define  TYPE_SI 129 
#define  TYPE_STREAM 128 
 scalar_t__ UINT16_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC8( demux_t *p_demux, ts_pid_type_t i_type, ts_pid_t *pid, ts_pid_t *p_parent )
{
    if( pid == p_parent || pid->i_pid == 0x1FFF )
        return false;

    if( pid->i_refcount == 0 )
    {
        FUNC1( pid->type == TYPE_FREE );
        switch( i_type )
        {
        case TYPE_FREE: /* nonsense ?*/
            FUNC0( pid );
            return true;

        case TYPE_CAT:
            return true;

        case TYPE_PAT:
            FUNC0( pid );
            pid->u.p_pat = FUNC3( p_demux );
            if( !pid->u.p_pat )
                return false;
            break;

        case TYPE_PMT:
            FUNC0( pid );
            pid->u.p_pmt = FUNC4( p_demux );
            if( !pid->u.p_pmt )
                return false;
            break;

        case TYPE_STREAM:
            FUNC0( pid );
            pid->u.p_stream = FUNC7( p_demux, p_parent->u.p_pmt );
            if( !pid->u.p_stream )
                return false;
            break;

        case TYPE_SI:
            FUNC0( pid );
            pid->u.p_si = FUNC6( p_demux );
            if( !pid->u.p_si )
                return false;
            break;

        case TYPE_PSIP:
            FUNC0( pid );
            pid->u.p_psip = FUNC5( p_demux );
            if( !pid->u.p_psip )
                return false;
            break;

        default:
            FUNC1(false);
            break;
        }

        pid->i_refcount++;
        pid->type = i_type;
    }
    else if( pid->type == i_type && pid->i_refcount < UINT16_MAX )
    {
        pid->i_refcount++;
    }
    else
    {
        if( pid->type != TYPE_FREE )
            FUNC2( p_demux, "Tried to redeclare pid %d with another type", pid->i_pid );
        return false;
    }

    return true;
}