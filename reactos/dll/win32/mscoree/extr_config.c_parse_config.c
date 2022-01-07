
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int parsed_config_file ;
typedef int VARIANT ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_3__ ISAXContentHandler_iface; TYPE_2__ ISAXErrorHandler_iface; int * result; scalar_t__ statenum; int * states; } ;
typedef int LPVOID ;
typedef int ISAXXMLReader ;
typedef int HRESULT ;
typedef TYPE_1__ ConfigFileHandler ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_SAXXMLReader ;
 int CoCreateInstance (int *,int *,int ,int *,int *) ;
 int ConfigFileHandlerErrorVtbl ;
 int ConfigFileHandlerVtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IID_ISAXXMLReader ;
 int ISAXContentHandler_Release (TYPE_3__*) ;
 int ISAXXMLReader_Release (int *) ;
 int ISAXXMLReader_parse (int *,int ) ;
 int ISAXXMLReader_putContentHandler (int *,TYPE_3__*) ;
 int ISAXXMLReader_putErrorHandler (int *,TYPE_2__*) ;
 int STATE_ROOT ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;

__attribute__((used)) static HRESULT parse_config(VARIANT input, parsed_config_file *result)
{
    ISAXXMLReader *reader;
    ConfigFileHandler *handler;
    HRESULT hr;

    handler = HeapAlloc(GetProcessHeap(), 0, sizeof(ConfigFileHandler));
    if (!handler)
        return E_OUTOFMEMORY;

    handler->ISAXContentHandler_iface.lpVtbl = &ConfigFileHandlerVtbl;
    handler->ISAXErrorHandler_iface.lpVtbl = &ConfigFileHandlerErrorVtbl;
    handler->ref = 1;
    handler->states[0] = STATE_ROOT;
    handler->statenum = 0;
    handler->result = result;

    hr = CoCreateInstance(&CLSID_SAXXMLReader, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_ISAXXMLReader, (LPVOID*)&reader);

    if (SUCCEEDED(hr))
    {
        hr = ISAXXMLReader_putContentHandler(reader, &handler->ISAXContentHandler_iface);

        if (SUCCEEDED(hr))
            hr = ISAXXMLReader_putErrorHandler(reader, &handler->ISAXErrorHandler_iface);

        if (SUCCEEDED(hr))
            hr = ISAXXMLReader_parse(reader, input);

        ISAXXMLReader_Release(reader);
    }

    ISAXContentHandler_Release(&handler->ISAXContentHandler_iface);

    return S_OK;
}
