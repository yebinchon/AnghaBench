#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  i_extra; int /*<<< orphan*/  p_extra; } ;
struct TYPE_8__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_2__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ XML_READER_STARTELEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static void FUNC9( decoder_t *p_dec )
{
    stream_t      *p_sub = NULL;
    xml_reader_t  *p_xml_reader = NULL;

    p_sub = FUNC5( FUNC1(p_dec),
                              p_dec->fmt_in.p_extra,
                              p_dec->fmt_in.i_extra,
                              true );
    if( !p_sub )
        return;

    p_xml_reader = FUNC6( p_dec, p_sub );
    if( FUNC2(p_xml_reader) )
    {
        const char *node;

        /* Look for Root Node */
        if( FUNC8( p_xml_reader, &node ) == XML_READER_STARTELEM
         && !FUNC3( "usfsubtitles", node ) )
            FUNC0( p_dec, p_xml_reader );

        FUNC7( p_xml_reader );
    }
    FUNC4( p_sub );
}