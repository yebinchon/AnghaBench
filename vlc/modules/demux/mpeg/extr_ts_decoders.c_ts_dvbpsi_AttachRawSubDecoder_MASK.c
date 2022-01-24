#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {void* p_cb_data; int /*<<< orphan*/  pf_callback; } ;
typedef  TYPE_1__ ts_dvbpsi_rawtable_decoder_t ;
typedef  int /*<<< orphan*/  ts_dvbpsi_rawsections_callback_t ;
struct TYPE_6__ {scalar_t__ p_decoder; } ;
typedef  TYPE_2__ dvbpsi_t ;
typedef  int /*<<< orphan*/  dvbpsi_demux_t ;
typedef  int /*<<< orphan*/  dvbpsi_demux_subdec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_dvbpsi_DetachRawSubDecoder ; 
 int /*<<< orphan*/  ts_dvbpsi_RawSubDecoderGatherSections ; 

bool FUNC6( dvbpsi_t* p_dvbpsi,
                                    uint8_t i_table_id, uint16_t i_extension,
                                    ts_dvbpsi_rawsections_callback_t pf_callback,
                                     void *p_cb_data )
{
    dvbpsi_demux_t *p_demux = (dvbpsi_demux_t*)p_dvbpsi->p_decoder;
    if ( FUNC5(p_demux, i_table_id, i_extension) )
        return false;

    ts_dvbpsi_rawtable_decoder_t *p_decoder;
    p_decoder = (ts_dvbpsi_rawtable_decoder_t *) FUNC4( NULL, 0, true, sizeof(*p_decoder) );
    if ( p_decoder == NULL )
        return false;

    /* subtable decoder configuration */
    dvbpsi_demux_subdec_t* p_subdec;
    p_subdec = FUNC2( i_table_id, i_extension,
                                          ts_dvbpsi_DetachRawSubDecoder,
                                          ts_dvbpsi_RawSubDecoderGatherSections,
                                          FUNC0(p_decoder) );
    if (p_subdec == NULL)
    {
        FUNC3( FUNC0(p_decoder) );
        return false;
    }

    /* Attach the subtable decoder to the demux */
    FUNC1( p_demux, p_subdec );

    p_decoder->pf_callback = pf_callback;
    p_decoder->p_cb_data = p_cb_data;

    return true;
}