#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int line_number; int line_position; } ;
struct TYPE_19__ {int instate; int /*<<< orphan*/  nodetype; int /*<<< orphan*/  state; int /*<<< orphan*/  input; TYPE_1__ position; int /*<<< orphan*/  empty_element; int /*<<< orphan*/  is_empty_element; scalar_t__ chunk_read_off; } ;
typedef  TYPE_2__ xmlreader ;
typedef  size_t xml_encoding ;
typedef  int XmlNodeType ;
struct TYPE_20__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  WC_E_SYNTAX ; 
 size_t XmlEncoding_Unknown ; 
#define  XmlNodeType_Attribute 138 
#define  XmlNodeType_Element 137 
#define  XmlNodeType_EndElement 136 
 int /*<<< orphan*/  XmlNodeType_None ; 
#define  XmlReadInState_Content 135 
#define  XmlReadInState_DTD 134 
#define  XmlReadInState_DTD_Misc 133 
#define  XmlReadInState_Element 132 
#define  XmlReadInState_Eof 131 
#define  XmlReadInState_Initial 130 
#define  XmlReadInState_MiscEnd 129 
#define  XmlReadInState_Misc_DTD 128 
 int /*<<< orphan*/  XmlReadState_EndOfFile ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_3__* xml_encoding_map ; 

__attribute__((used)) static HRESULT FUNC22(xmlreader *reader)
{
    XmlNodeType nodetype = FUNC8(reader);
    HRESULT hr;

    if (!FUNC5(reader))
    {
        reader->chunk_read_off = 0;
        FUNC6(reader);
    }

    /* When moving from EndElement or empty element, pop its own namespace definitions */
    switch (nodetype)
    {
    case XmlNodeType_Attribute:
        FUNC7(reader);
        /* fallthrough */
    case XmlNodeType_Element:
        if (reader->is_empty_element)
            FUNC17(reader, &reader->empty_element);
        else if (FUNC0(hr = FUNC10(reader)))
            return hr;
        break;
    case XmlNodeType_EndElement:
        FUNC16(reader);
        FUNC7(reader);
        break;
    default:
        ;
    }

    for (;;)
    {
        switch (reader->instate)
        {
        /* if it's a first call for a new input we need to detect stream encoding */
        case XmlReadInState_Initial:
            {
                xml_encoding enc;

                hr = FUNC19(reader->input);
                if (FUNC0(hr)) return hr;

                reader->position.line_number = 1;
                reader->position.line_position = 1;

                /* try to detect encoding by BOM or data and set input code page */
                hr = FUNC18(reader->input, &enc);
                FUNC2("detected encoding %s, 0x%08x\n", enc == XmlEncoding_Unknown ? "(unknown)" :
                        FUNC4(xml_encoding_map[enc].name), hr);
                if (FUNC0(hr)) return hr;

                /* always switch first time cause we have to put something in */
                FUNC21(reader->input, enc);

                /* parse xml declaration */
                hr = FUNC15(reader);
                if (FUNC0(hr)) return hr;

                FUNC20(reader->input, -1);
                reader->instate = XmlReadInState_Misc_DTD;
                if (hr == S_OK) return hr;
            }
            break;
        case XmlReadInState_Misc_DTD:
            hr = FUNC14(reader);
            if (FUNC0(hr)) return hr;

            if (hr == S_FALSE)
                reader->instate = XmlReadInState_DTD;
            else
                return hr;
            break;
        case XmlReadInState_DTD:
            hr = FUNC12(reader);
            if (FUNC0(hr)) return hr;

            if (hr == S_OK)
            {
                reader->instate = XmlReadInState_DTD_Misc;
                return hr;
            }
            else
                reader->instate = XmlReadInState_Element;
            break;
        case XmlReadInState_DTD_Misc:
            hr = FUNC14(reader);
            if (FUNC0(hr)) return hr;

            if (hr == S_FALSE)
                reader->instate = XmlReadInState_Element;
            else
                return hr;
            break;
        case XmlReadInState_Element:
            return FUNC13(reader);
        case XmlReadInState_Content:
            return FUNC11(reader);
        case XmlReadInState_MiscEnd:
            hr = FUNC14(reader);
            if (hr != S_FALSE) return hr;

            if (*FUNC9(reader))
            {
                FUNC3("found garbage in the end of XML\n");
                return WC_E_SYNTAX;
            }

            reader->instate = XmlReadInState_Eof;
            reader->state = XmlReadState_EndOfFile;
            reader->nodetype = XmlNodeType_None;
            return hr;
        case XmlReadInState_Eof:
            return S_FALSE;
        default:
            FUNC1("internal state %d not handled\n", reader->instate);
            return E_NOTIMPL;
        }
    }

    return E_NOTIMPL;
}