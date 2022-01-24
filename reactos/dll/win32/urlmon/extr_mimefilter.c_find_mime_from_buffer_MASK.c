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
typedef  int /*<<< orphan*/  const WCHAR ;
struct TYPE_4__ {scalar_t__ (* filter ) (int /*<<< orphan*/  const*,int) ;int /*<<< orphan*/  const* mime; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  const* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* app_octetstreamW ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 TYPE_1__* mime_filters ; 
 TYPE_1__* mime_filters_any_pos ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC13 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* text_plainW ; 

__attribute__((used)) static HRESULT FUNC19(const BYTE *buf, DWORD size, const WCHAR *proposed_mime, const WCHAR *url, WCHAR **ret_mime)
{
    int len, i, any_pos_mime = -1;
    const WCHAR *ret = NULL;

    if(!buf || !size) {
        if(!proposed_mime)
            return E_FAIL;

        len = FUNC13(proposed_mime)+1;
        *ret_mime = FUNC1(len*sizeof(WCHAR));
        if(!*ret_mime)
            return E_OUTOFMEMORY;

        FUNC10(*ret_mime, proposed_mime, len*sizeof(WCHAR));
        return S_OK;
    }

    if(proposed_mime && (!FUNC12(proposed_mime, app_octetstreamW)
                || !FUNC12(proposed_mime, text_plainW)))
        proposed_mime = NULL;

    if(proposed_mime) {
        ret = proposed_mime;

        for(i=0; i < FUNC0(mime_filters_any_pos); i++) {
            if(!FUNC12(proposed_mime, mime_filters_any_pos[i].mime)) {
                any_pos_mime = i;
                for(len=size; len>0; len--) {
                    if(mime_filters_any_pos[i].filter(buf+size-len, len))
                        break;
                }
                if(!len)
                    ret = NULL;
                break;
            }
        }

        if(i == FUNC0(mime_filters_any_pos)) {
            for(i=0; i < FUNC0(mime_filters); i++) {
                if(!FUNC12(proposed_mime, mime_filters[i].mime)) {
                    if(!mime_filters[i].filter(buf, size))
                        ret = NULL;
                    break;
                }
            }
        }
    }

    /* Looks like a bug in native implementation, html and xml mimes
     * are not looked for if none of them was proposed */
    if(!proposed_mime || any_pos_mime!=-1) {
        for(len=size; !ret && len>0; len--) {
            for(i=0; i<FUNC0(mime_filters_any_pos); i++) {
                if(mime_filters_any_pos[i].filter(buf+size-len, len)) {
                    ret = mime_filters_any_pos[i].mime;
                    break;
                }
            }
        }
    }

    i=0;
    while(!ret) {
        if(mime_filters[i].filter(buf, size))
            ret = mime_filters[i].mime;
        i++;
    }

    if(any_pos_mime!=-1 && ret==text_plainW)
        ret = mime_filters_any_pos[any_pos_mime].mime;
    else if(proposed_mime && ret==app_octetstreamW) {
        for(len=size; ret==app_octetstreamW && len>0; len--) {
            if(!FUNC9(buf[size-len]))
                break;
            for(i=0; i<FUNC0(mime_filters_any_pos); i++) {
                if(mime_filters_any_pos[i].filter(buf+size-len, len)) {
                    ret = text_plainW;
                    break;
                }
            }
        }

        if(ret == app_octetstreamW)
            ret = proposed_mime;
    }

    if(url && (ret == app_octetstreamW || ret == text_plainW)) {
        WCHAR *url_mime;
        HRESULT hres;

        hres = FUNC7(url, &url_mime);
        if(FUNC3(hres)) {
            if(!FUNC8(url_mime)) {
                *ret_mime = url_mime;
                return hres;
            }
            FUNC2(url_mime);
        }
    }

    FUNC4("found %s for %s\n", FUNC6(ret), FUNC5((const char*)buf, FUNC11(32, size)));

    len = FUNC13(ret)+1;
    *ret_mime = FUNC1(len*sizeof(WCHAR));
    if(!*ret_mime)
        return E_OUTOFMEMORY;

    FUNC10(*ret_mime, ret, len*sizeof(WCHAR));
    return S_OK;
}