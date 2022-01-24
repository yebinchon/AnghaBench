#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  binding; } ;
struct TYPE_10__ {TYPE_2__ bsc; TYPE_1__* nschannel; int /*<<< orphan*/  is_doc_channel; } ;
typedef  TYPE_3__ nsChannelBSC ;
typedef  int ULONG ;
struct TYPE_8__ {int /*<<< orphan*/  content_type; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IWinInetHttpInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BSCallback ;

/* Variables and functions */
#define  BINDSTATUS_BEGINDOWNLOADDATA 130 
#define  BINDSTATUS_MIMETYPEAVAILABLE 129 
#define  BINDSTATUS_REDIRECTING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int HTTP_QUERY_FLAG_NUMBER ; 
 int HTTP_QUERY_STATUS_CODE ; 
 int HTTP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IWinInetHttpInfo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC13(BSCallback *bsc, ULONG status_code, LPCWSTR status_text)
{
    nsChannelBSC *This = FUNC12(bsc);

    switch(status_code) {
    case BINDSTATUS_MIMETYPEAVAILABLE:
        if(This->is_doc_channel && !FUNC11(status_text)) {
            FUNC1("External MIME: %s\n", FUNC5(status_text));

            FUNC6(This);

            This->nschannel = NULL;
        }

        if(!This->nschannel)
            return S_OK;

        FUNC9(This->nschannel->content_type);
        This->nschannel->content_type = FUNC10(status_text);
        break;
    case BINDSTATUS_REDIRECTING:
        return FUNC8(This, status_text);
    case BINDSTATUS_BEGINDOWNLOADDATA: {
        IWinInetHttpInfo *http_info;
        DWORD status, size = sizeof(DWORD);
        HRESULT hres;

        if(!This->bsc.binding)
            break;

        hres = FUNC2(This->bsc.binding, &IID_IWinInetHttpInfo, (void**)&http_info);
        if(FUNC0(hres))
            break;

        hres = FUNC3(http_info,
                HTTP_QUERY_STATUS_CODE|HTTP_QUERY_FLAG_NUMBER, &status, &size, NULL, NULL);
        FUNC4(http_info);
        if(FUNC0(hres) || status == HTTP_STATUS_OK)
            break;

        FUNC7(This, status);
    }
    }

    return S_OK;
}