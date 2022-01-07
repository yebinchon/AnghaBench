
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IXMLDOMParseError2_iface; int dispex; void* filepos; void* linepos; void* line; void* srcText; void* reason; void* url; void* code; } ;
typedef TYPE_2__ parse_error_t ;
typedef void* LONG ;
typedef int IXMLDOMParseError ;
typedef int IUnknown ;
typedef void* BSTR ;


 int XMLDOMParseError2Vtbl ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;
 int parseError_dispex ;

IXMLDOMParseError *create_parseError( LONG code, BSTR url, BSTR reason, BSTR srcText,
                                      LONG line, LONG linepos, LONG filepos )
{
    parse_error_t *This;

    This = heap_alloc( sizeof(*This) );
    if ( !This )
        return ((void*)0);

    This->IXMLDOMParseError2_iface.lpVtbl = &XMLDOMParseError2Vtbl;
    This->ref = 1;

    This->code = code;
    This->url = url;
    This->reason = reason;
    This->srcText = srcText;
    This->line = line;
    This->linepos = linepos;
    This->filepos = filepos;

    init_dispex(&This->dispex, (IUnknown*)&This->IXMLDOMParseError2_iface, &parseError_dispex);

    return (IXMLDOMParseError*)&This->IXMLDOMParseError2_iface;
}
