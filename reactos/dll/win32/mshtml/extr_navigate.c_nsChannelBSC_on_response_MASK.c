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
struct TYPE_6__ {TYPE_1__* nschannel; int /*<<< orphan*/  response_processed; } ;
typedef  TYPE_2__ nsChannelBSC ;
typedef  char WCHAR ;
struct TYPE_5__ {char* response_status_text; int /*<<< orphan*/  response_status; } ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BSCallback ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,char**) ; 
 char* FUNC6 (scalar_t__,char) ; 

__attribute__((used)) static HRESULT FUNC7(BSCallback *bsc, DWORD response_code,
        LPCWSTR response_headers)
{
    nsChannelBSC *This = FUNC3(bsc);
    char *str;
    HRESULT hres;

    This->response_processed = TRUE;
    This->nschannel->response_status = response_code;

    if(response_headers) {
        const WCHAR *headers;

        headers = FUNC6(response_headers, '\r');
        hres = FUNC5(response_headers, headers, &str);
        if(FUNC0(hres)) {
            FUNC1("parsing headers failed: %08x\n", hres);
            return hres;
        }

        FUNC2(This->nschannel->response_status_text);
        This->nschannel->response_status_text = str;

        if(headers && headers[1] == '\n') {
            headers += 2;
            hres = FUNC4(This, headers);
            if(FUNC0(hres)) {
                FUNC1("parsing headers failed: %08x\n", hres);
                return hres;
            }
        }
    }

    return S_OK;
}