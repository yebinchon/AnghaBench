#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  parsed_config_file ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_3__ ISAXContentHandler_iface; TYPE_2__ ISAXErrorHandler_iface; int /*<<< orphan*/ * result; scalar_t__ statenum; int /*<<< orphan*/ * states; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  ISAXXMLReader ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ ConfigFileHandler ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_SAXXMLReader ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ConfigFileHandlerErrorVtbl ; 
 int /*<<< orphan*/  ConfigFileHandlerVtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_ISAXXMLReader ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  STATE_ROOT ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC9(VARIANT input, parsed_config_file *result)
{
    ISAXXMLReader *reader;
    ConfigFileHandler *handler;
    HRESULT hr;

    handler = FUNC2(FUNC1(), 0, sizeof(ConfigFileHandler));
    if (!handler)
        return E_OUTOFMEMORY;

    handler->ISAXContentHandler_iface.lpVtbl = &ConfigFileHandlerVtbl;
    handler->ISAXErrorHandler_iface.lpVtbl = &ConfigFileHandlerErrorVtbl;
    handler->ref = 1;
    handler->states[0] = STATE_ROOT;
    handler->statenum = 0;
    handler->result = result;

    hr = FUNC0(&CLSID_SAXXMLReader, NULL, CLSCTX_INPROC_SERVER,
        &IID_ISAXXMLReader, (LPVOID*)&reader);

    if (FUNC8(hr))
    {
        hr = FUNC6(reader, &handler->ISAXContentHandler_iface);

        if (FUNC8(hr))
            hr = FUNC7(reader, &handler->ISAXErrorHandler_iface);

        if (FUNC8(hr))
            hr = FUNC5(reader, input);

        FUNC4(reader);
    }

    FUNC3(&handler->ISAXContentHandler_iface);

    return S_OK;
}