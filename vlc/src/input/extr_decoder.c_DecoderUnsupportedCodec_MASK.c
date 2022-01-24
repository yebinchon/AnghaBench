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
struct TYPE_3__ {scalar_t__ i_codec; int /*<<< orphan*/  i_cat; } ;
typedef  TYPE_1__ es_format_t ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ VLC_CODEC_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5( decoder_t *p_dec, const es_format_t *fmt, bool b_decoding )
{
    if (fmt->i_codec != VLC_CODEC_UNKNOWN && fmt->i_codec) {
        const char *desc = FUNC4(fmt->i_cat, fmt->i_codec);
        if (!desc || !*desc)
            desc = FUNC0("No description for this codec");
        FUNC2( p_dec, "Codec `%4.4s' (%s) is not supported.", (char*)&fmt->i_codec, desc );
        FUNC3( p_dec, FUNC1("Codec not supported"),
            FUNC1("VLC could not decode the format \"%4.4s\" (%s)"),
            (char*)&fmt->i_codec, desc );
    } else if( b_decoding ){
        FUNC2( p_dec, "could not identify codec" );
        FUNC3( p_dec, FUNC1("Unidentified codec"),
            FUNC1("VLC could not identify the audio or video codec" ) );
    }
}