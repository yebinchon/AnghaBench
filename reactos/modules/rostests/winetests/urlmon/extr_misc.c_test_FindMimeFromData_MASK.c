#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {char* mime; int broken_failure; char* broken_mime; int hres; char* mime_pjpeg; int /*<<< orphan*/  size; int /*<<< orphan*/ * data; int /*<<< orphan*/  proposed_mime; int /*<<< orphan*/  url; } ;
typedef  char* LPWSTR ;
typedef  int HRESULT ;
typedef  int BYTE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int E_FAIL ; 
 int E_INVALIDARG ; 
 int S_OK ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * data1 ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* mime_tests ; 
 TYPE_1__* mime_tests2 ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* url1 ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    WCHAR *mime, *proposed_mime, *url;
    HRESULT hres;
    BYTE b;
    int i;

    static const WCHAR app_octet_streamW[] =
        {'a','p','p','l','i','c','a','t','i','o','n','/','o','c','t','e','t','-','s','t','r','e','a','m',0};
    static const WCHAR image_pjpegW[] = {'i','m','a','g','e','/','p','j','p','e','g',0};
    static const WCHAR text_htmlW[] = {'t','e','x','t','/','h','t','m','l',0};
    static const WCHAR text_plainW[] = {'t','e','x','t','/','p','l','a','i','n',0};

    for(i = 0; i < FUNC0(mime_tests); i++) {
        mime = (LPWSTR)0xf0f0f0f0;
        url = FUNC2(mime_tests[i].url);
        hres = FUNC6(NULL, url, NULL, 0, NULL, 0, &mime, 0);
        if(mime_tests[i].mime) {
            FUNC5(hres == S_OK || FUNC3(mime_tests[i].broken_failure), "[%d] FindMimeFromData failed: %08x\n", i, hres);
            if(hres == S_OK) {
                FUNC5(!FUNC8(mime, mime_tests[i].mime)
                   || FUNC3(mime_tests[i].broken_mime && !FUNC8(mime, mime_tests[i].broken_mime)),
                   "[%d] wrong mime: %s\n", i, FUNC9(mime));
                FUNC1(mime);
            }
        }else {
            FUNC5(hres == E_FAIL || hres == mime_tests[i].hres,
               "[%d] FindMimeFromData failed: %08x, expected %08x\n",
               i, hres, mime_tests[i].hres);
            FUNC5(mime == (LPWSTR)0xf0f0f0f0, "[%d] mime != 0xf0f0f0f0\n", i);
        }

        mime = (LPWSTR)0xf0f0f0f0;
        hres = FUNC6(NULL, url, NULL, 0, text_plainW, 0, &mime, 0);
        FUNC5(hres == S_OK, "[%d] FindMimeFromData failed: %08x\n", i, hres);
        FUNC5(!FUNC8(mime, "text/plain"), "[%d] wrong mime: %s\n", i, FUNC9(mime));
        FUNC1(mime);

        mime = (LPWSTR)0xf0f0f0f0;
        hres = FUNC6(NULL, url, NULL, 0, app_octet_streamW, 0, &mime, 0);
        FUNC5(hres == S_OK, "[%d] FindMimeFromData failed: %08x\n", i, hres);
        FUNC5(!FUNC8(mime, "application/octet-stream"), "[%d] wrong mime: %s\n", i, FUNC9(mime));
        FUNC1(mime);
        FUNC4(url);
    }

    for(i = 0; i < FUNC0(mime_tests2); i++) {
        url = FUNC2(mime_tests2[i].url);
        proposed_mime = FUNC2(mime_tests2[i].proposed_mime);
        hres = FUNC6(NULL, url, mime_tests2[i].data, mime_tests2[i].size,
                proposed_mime, 0, &mime, 0);
        FUNC5(hres == S_OK, "[%d] FindMimeFromData failed: %08x\n", i, hres);
        b = !FUNC8(mime, mime_tests2[i].mime);
        FUNC5(b || FUNC3(mime_tests2[i].broken_mime && !FUNC8(mime, mime_tests2[i].broken_mime)),
            "[%d] wrong mime: %s\n", i, FUNC9(mime));
        FUNC4(proposed_mime);
        FUNC4(url);
        FUNC1(mime);
        if(!b || url || proposed_mime)
            continue;

        hres = FUNC6(NULL, NULL, mime_tests2[i].data, mime_tests2[i].size,
                app_octet_streamW, 0, &mime, 0);
        FUNC5(hres == S_OK, "[%d] FindMimeFromData failed: %08x\n", i, hres);
        FUNC5(!FUNC8(mime, mime_tests2[i].mime) || FUNC3(mime_tests2[i].broken_mime
                        && !FUNC8(mime, mime_tests2[i].broken_mime)),
                    "[%d] wrong mime: %s\n", i, FUNC9(mime));
        FUNC1(mime);

        hres = FUNC6(NULL, NULL, mime_tests2[i].data, mime_tests2[i].size,
                text_plainW, 0, &mime, 0);
        FUNC5(hres == S_OK, "[%d] FindMimeFromData failed: %08x\n", i, hres);
        FUNC5(!FUNC8(mime, mime_tests2[i].mime) || FUNC3(mime_tests2[i].broken_mime
                    && !FUNC8(mime, mime_tests2[i].broken_mime)),
                "[%d] wrong mime: %s\n", i, FUNC9(mime));
        FUNC1(mime);

        hres = FUNC6(NULL, NULL, mime_tests2[i].data, mime_tests2[i].size,
                text_htmlW, 0, &mime, 0);
        FUNC5(hres == S_OK, "[%d] FindMimeFromData failed: %08x\n", i, hres);
        if(!FUNC7("application/octet-stream", mime_tests2[i].mime)
           || !FUNC7("text/plain", mime_tests2[i].mime) || i==92)
            FUNC5(!FUNC8(mime, "text/html"), "[%d] wrong mime: %s\n", i, FUNC9(mime));
        else
            FUNC5(!FUNC8(mime, mime_tests2[i].mime), "[%d] wrong mime: %s\n", i, FUNC9(mime));
        FUNC1(mime);

        hres = FUNC6(NULL, NULL, mime_tests2[i].data, mime_tests2[i].size,
                image_pjpegW, 0, &mime, 0);
        FUNC5(hres == S_OK, "[%d] FindMimeFromData failed: %08x\n", i, hres);
        FUNC5(!FUNC8(mime, mime_tests2[i].mime_pjpeg ? mime_tests2[i].mime_pjpeg : mime_tests2[i].mime)
           || FUNC3(!FUNC8(mime, mime_tests2[i].mime)),
           "[%d] wrong mime, got %s\n", i, FUNC9(mime));
        FUNC1(mime);
    }

    hres = FUNC6(NULL, NULL, NULL, 0, NULL, 0, &mime, 0);
    FUNC5(hres == E_INVALIDARG, "FindMimeFromData failed: %08x, expected E_INVALIDARG\n", hres);

    hres = FUNC6(NULL, NULL, NULL, 0, text_plainW, 0, &mime, 0);
    FUNC5(hres == E_INVALIDARG, "FindMimeFromData failed: %08x, expected E_INVALIDARG\n", hres);

    hres = FUNC6(NULL, NULL, data1, 0, NULL, 0, &mime, 0);
    FUNC5(hres == E_FAIL, "FindMimeFromData failed: %08x, expected E_FAIL\n", hres);

    hres = FUNC6(NULL, url1, data1, 0, NULL, 0, &mime, 0);
    FUNC5(hres == E_FAIL, "FindMimeFromData failed: %08x, expected E_FAIL\n", hres);

    hres = FUNC6(NULL, NULL, data1, 0, text_plainW, 0, &mime, 0);
    FUNC5(hres == S_OK, "FindMimeFromData failed: %08x\n", hres);
    FUNC5(!FUNC8(mime, "text/plain"), "wrong mime: %s\n", FUNC9(mime));
    FUNC1(mime);

    hres = FUNC6(NULL, NULL, data1, 0, text_plainW, 0, NULL, 0);
    FUNC5(hres == E_INVALIDARG, "FindMimeFromData failed: %08x, expected E_INVALIDARG\n", hres);
}