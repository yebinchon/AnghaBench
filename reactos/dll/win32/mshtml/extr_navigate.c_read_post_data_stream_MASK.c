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
struct list {int dummy; } ;
struct TYPE_3__ {char* post_data; int post_data_len; int /*<<< orphan*/ * post_stream; scalar_t__* headers; } ;
typedef  TYPE_1__ request_data_t ;
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsISeekableStream ;
typedef  int /*<<< orphan*/  nsIInputStream ;
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ UINT64 ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  IID_nsISeekableStream ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  NS_SEEK_SET ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 scalar_t__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*,struct list*) ; 

__attribute__((used)) static HRESULT FUNC20(nsIInputStream *stream, BOOL contains_headers, struct list *headers_list,
        request_data_t *request_data)
{
    nsISeekableStream *seekable_stream;
    UINT64 available = 0;
    UINT32 data_len = 0;
    char *data, *post_data;
    nsresult nsres;
    HRESULT hres = S_OK;

    if(!stream)
        return S_OK;

    nsres =  FUNC14(stream, &available);
    if(FUNC4(nsres))
        return E_FAIL;

    post_data = data = FUNC1(0, available+1);
    if(!data)
        return E_OUTOFMEMORY;

    nsres = FUNC16(stream, data, available, &data_len);
    if(FUNC4(nsres)) {
        FUNC2(data);
        return E_FAIL;
    }

    if(contains_headers) {
        if(data_len >= 2 && data[0] == '\r' && data[1] == '\n') {
            post_data = data+2;
            data_len -= 2;
        }else {
            WCHAR *headers;
            DWORD size;
            char *ptr;

            post_data += data_len;
            for(ptr = data; ptr+4 < data+data_len; ptr++) {
                if(!FUNC11(ptr, "\r\n\r\n", 4)) {
                    ptr += 2;
                    post_data = ptr+2;
                    break;
                }
            }

            data_len -= post_data-data;

            size = FUNC3(CP_ACP, 0, data, ptr-data, NULL, 0);
            headers = FUNC9((size+1)*sizeof(WCHAR));
            if(headers) {
                FUNC3(CP_ACP, 0, data, ptr-data, headers, size);
                headers[size] = 0;
                if(headers_list)
                    hres = FUNC19(headers, headers_list);
                if(FUNC5(hres))
                    request_data->headers = headers;
                else
                    FUNC10(headers);
            }else {
                hres = E_OUTOFMEMORY;
            }
        }
    }

    if(FUNC0(hres)) {
        FUNC2(data);
        return hres;
    }

    if(!data_len) {
        FUNC2(data);
        post_data = NULL;
    }else if(post_data != data) {
        char *new_data;

        new_data = FUNC1(0, data_len+1);
        if(new_data)
            FUNC12(new_data, post_data, data_len);
        FUNC2(data);
        if(!new_data)
            return E_OUTOFMEMORY;
        post_data = new_data;
    }

    if(post_data)
        post_data[data_len] = 0;
    request_data->post_data = post_data;
    request_data->post_data_len = data_len;

    nsres = FUNC15(stream, &IID_nsISeekableStream, (void**)&seekable_stream);
    FUNC7(nsres == NS_OK);

    nsres = FUNC18(seekable_stream, NS_SEEK_SET, 0);
    FUNC7(nsres == NS_OK);

    FUNC17(seekable_stream);

    FUNC13(stream);
    request_data->post_stream = stream;
    FUNC6("post_data = %s\n", FUNC8(request_data->post_data, request_data->post_data_len));
    return S_OK;
}