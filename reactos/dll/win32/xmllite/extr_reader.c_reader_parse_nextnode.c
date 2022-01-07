
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int line_number; int line_position; } ;
struct TYPE_19__ {int instate; int nodetype; int state; int input; TYPE_1__ position; int empty_element; int is_empty_element; scalar_t__ chunk_read_off; } ;
typedef TYPE_2__ xmlreader ;
typedef size_t xml_encoding ;
typedef int XmlNodeType ;
struct TYPE_20__ {int name; } ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;
 int S_FALSE ;
 int S_OK ;
 int TRACE (char*,char*,int ) ;
 int WARN (char*) ;
 int WC_E_SYNTAX ;
 size_t XmlEncoding_Unknown ;



 int XmlNodeType_None ;
 int XmlReadState_EndOfFile ;
 char* debugstr_w (int ) ;
 int is_reader_pending (TYPE_2__*) ;
 int reader_clear_attrs (TYPE_2__*) ;
 int reader_dec_depth (TYPE_2__*) ;
 int reader_get_nodetype (TYPE_2__*) ;
 int * reader_get_ptr (TYPE_2__*) ;
 int reader_inc_depth (TYPE_2__*) ;
 int reader_parse_content (TYPE_2__*) ;
 int reader_parse_dtd (TYPE_2__*) ;
 int reader_parse_element (TYPE_2__*) ;
 int reader_parse_misc (TYPE_2__*) ;
 int reader_parse_xmldecl (TYPE_2__*) ;
 int reader_pop_element (TYPE_2__*) ;
 int reader_pop_ns_nodes (TYPE_2__*,int *) ;
 int readerinput_detectencoding (int ,size_t*) ;
 int readerinput_growraw (int ) ;
 int readerinput_shrinkraw (int ,int) ;
 int readerinput_switchencoding (int ,size_t) ;
 TYPE_3__* xml_encoding_map ;

__attribute__((used)) static HRESULT reader_parse_nextnode(xmlreader *reader)
{
    XmlNodeType nodetype = reader_get_nodetype(reader);
    HRESULT hr;

    if (!is_reader_pending(reader))
    {
        reader->chunk_read_off = 0;
        reader_clear_attrs(reader);
    }


    switch (nodetype)
    {
    case 138:
        reader_dec_depth(reader);

    case 137:
        if (reader->is_empty_element)
            reader_pop_ns_nodes(reader, &reader->empty_element);
        else if (FAILED(hr = reader_inc_depth(reader)))
            return hr;
        break;
    case 136:
        reader_pop_element(reader);
        reader_dec_depth(reader);
        break;
    default:
        ;
    }

    for (;;)
    {
        switch (reader->instate)
        {

        case 130:
            {
                xml_encoding enc;

                hr = readerinput_growraw(reader->input);
                if (FAILED(hr)) return hr;

                reader->position.line_number = 1;
                reader->position.line_position = 1;


                hr = readerinput_detectencoding(reader->input, &enc);
                TRACE("detected encoding %s, 0x%08x\n", enc == XmlEncoding_Unknown ? "(unknown)" :
                        debugstr_w(xml_encoding_map[enc].name), hr);
                if (FAILED(hr)) return hr;


                readerinput_switchencoding(reader->input, enc);


                hr = reader_parse_xmldecl(reader);
                if (FAILED(hr)) return hr;

                readerinput_shrinkraw(reader->input, -1);
                reader->instate = 128;
                if (hr == S_OK) return hr;
            }
            break;
        case 128:
            hr = reader_parse_misc(reader);
            if (FAILED(hr)) return hr;

            if (hr == S_FALSE)
                reader->instate = 134;
            else
                return hr;
            break;
        case 134:
            hr = reader_parse_dtd(reader);
            if (FAILED(hr)) return hr;

            if (hr == S_OK)
            {
                reader->instate = 133;
                return hr;
            }
            else
                reader->instate = 132;
            break;
        case 133:
            hr = reader_parse_misc(reader);
            if (FAILED(hr)) return hr;

            if (hr == S_FALSE)
                reader->instate = 132;
            else
                return hr;
            break;
        case 132:
            return reader_parse_element(reader);
        case 135:
            return reader_parse_content(reader);
        case 129:
            hr = reader_parse_misc(reader);
            if (hr != S_FALSE) return hr;

            if (*reader_get_ptr(reader))
            {
                WARN("found garbage in the end of XML\n");
                return WC_E_SYNTAX;
            }

            reader->instate = 131;
            reader->state = XmlReadState_EndOfFile;
            reader->nodetype = XmlNodeType_None;
            return hr;
        case 131:
            return S_FALSE;
        default:
            FIXME("internal state %d not handled\n", reader->instate);
            return E_NOTIMPL;
        }
    }

    return E_NOTIMPL;
}
