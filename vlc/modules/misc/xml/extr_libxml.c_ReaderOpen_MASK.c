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
struct TYPE_6__ {int /*<<< orphan*/  pf_use_dtd; int /*<<< orphan*/  pf_is_empty; int /*<<< orphan*/  pf_next_attr; int /*<<< orphan*/  pf_next_node; TYPE_2__* p_sys; int /*<<< orphan*/  p_stream; } ;
typedef  TYPE_1__ xml_reader_t ;
struct TYPE_7__ {int /*<<< orphan*/ * node; scalar_t__ xml; } ;
typedef  TYPE_2__ xml_reader_sys_t ;
typedef  scalar_t__ xmlTextReaderPtr ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  ReaderErrorHandler ; 
 int /*<<< orphan*/  ReaderIsEmptyElement ; 
 int /*<<< orphan*/  ReaderNextAttr ; 
 int /*<<< orphan*/  ReaderNextNode ; 
 int /*<<< orphan*/  ReaderUseDTD ; 
 int /*<<< orphan*/  StreamRead ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  XML_WITH_THREAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  lock ; 
 TYPE_2__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9( vlc_object_t *p_this )
{
    if( !FUNC5( XML_WITH_THREAD ) )
        return VLC_EGENERIC;

    xml_reader_t *p_reader = (xml_reader_t *)p_this;
    xml_reader_sys_t *p_sys = FUNC1( sizeof( *p_sys ) );
    xmlTextReaderPtr p_libxml_reader;

    if( FUNC2(!p_sys) )
        return VLC_ENOMEM;

    FUNC3( &lock );
    FUNC6();
    FUNC4( &lock );

    p_libxml_reader = FUNC7( StreamRead, NULL, p_reader->p_stream,
                                      NULL, NULL, 0 );
    if( !p_libxml_reader )
    {
        FUNC0( p_sys );
        return VLC_ENOMEM;
    }

    /* Set the error handler */
    FUNC8( p_libxml_reader,
                                  ReaderErrorHandler, p_reader );

    p_sys->xml = p_libxml_reader;
    p_sys->node = NULL;
    p_reader->p_sys = p_sys;
    p_reader->pf_next_node = ReaderNextNode;
    p_reader->pf_next_attr = ReaderNextAttr;
    p_reader->pf_is_empty = ReaderIsEmptyElement;
    p_reader->pf_use_dtd = ReaderUseDTD;

    return VLC_SUCCESS;
}