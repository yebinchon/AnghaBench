#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fmt; } ;
typedef  TYPE_1__ ts_es_t ;
typedef  int /*<<< orphan*/  dvbpsi_pmt_es_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_DIRAC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC3( demux_t *p_demux, ts_es_t *p_es,
                           const dvbpsi_pmt_es_t *p_dvbpsies )
{
    /* Registration Descriptor */
    if( !FUNC0( p_demux, p_dvbpsies, "drac" ) )
    {
        FUNC2( p_demux, "Registration descriptor not found or invalid" );
        return;
    }

    /* registration descriptor for Dirac
     * (backwards compatable with VC-2 (SMPTE Sxxxx:2008)) */
    FUNC1( &p_es->fmt, VIDEO_ES, VLC_CODEC_DIRAC );
}