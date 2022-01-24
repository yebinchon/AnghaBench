#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_mplex; } ;
typedef  TYPE_3__ scan_service_t ;
struct TYPE_5__ {int type; int /*<<< orphan*/  inner_fec; int /*<<< orphan*/  modulation; int /*<<< orphan*/  i_symbolrate; int /*<<< orphan*/  i_frequency; scalar_t__ polarization; int /*<<< orphan*/  i_bandwidth; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;

/* Variables and functions */
#define  SCAN_DVB_C 130 
#define  SCAN_DVB_S 129 
#define  SCAN_DVB_T 128 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 

char * FUNC3( const scan_service_t *s )
{
    char *psz_mrl = NULL;
    int i_ret = -1;
    switch( s->p_mplex->cfg.type )
    {
        case SCAN_DVB_T:
            i_ret = FUNC0( &psz_mrl, "dvb://frequency=%d:bandwidth=%d:modulation=%c",
                              s->p_mplex->cfg.i_frequency,
                              s->p_mplex->cfg.i_bandwidth,
                              FUNC2( s->p_mplex->cfg.modulation ) );
            break;
        case SCAN_DVB_S:
            i_ret = FUNC0( &psz_mrl, "dvb://frequency=%d:srate=%d:polarization=%c:fec=%d",
                              s->p_mplex->cfg.i_frequency,
                              s->p_mplex->cfg.i_symbolrate,
                              (char) s->p_mplex->cfg.polarization,
                              FUNC1( s->p_mplex->cfg.inner_fec ) );
            break;
        case SCAN_DVB_C:
            i_ret = FUNC0( &psz_mrl, "dvb://frequency=%d:srate=%d:modulation=%c:fec=%d",
                              s->p_mplex->cfg.i_frequency,
                              s->p_mplex->cfg.i_symbolrate,
                              FUNC2( s->p_mplex->cfg.modulation ),
                              FUNC1( s->p_mplex->cfg.inner_fec ) );
        default:
            break;
    }
    return (i_ret >=0) ? psz_mrl : NULL;
}