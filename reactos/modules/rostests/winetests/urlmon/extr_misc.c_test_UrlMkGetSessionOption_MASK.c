#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  encoding ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int E_INVALIDARG ; 
 int S_OK ; 
 int /*<<< orphan*/  URLMON_OPTION_URL_ENCODING ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    DWORD encoding, size;
    HRESULT hres;

    size = encoding = 0xdeadbeef;
    hres = FUNC1(URLMON_OPTION_URL_ENCODING, &encoding,
                                 sizeof(encoding), &size, 0);
    FUNC0(hres == S_OK, "UrlMkGetSessionOption failed: %08x\n", hres);
    FUNC0(encoding != 0xdeadbeef, "encoding not changed\n");
    FUNC0(size == sizeof(encoding), "size=%d\n", size);

    size = encoding = 0xdeadbeef;
    hres = FUNC1(URLMON_OPTION_URL_ENCODING, &encoding,
                                 sizeof(encoding)+1, &size, 0);
    FUNC0(hres == S_OK, "UrlMkGetSessionOption failed: %08x\n", hres);
    FUNC0(encoding != 0xdeadbeef, "encoding not changed\n");
    FUNC0(size == sizeof(encoding), "size=%d\n", size);

    size = encoding = 0xdeadbeef;
    hres = FUNC1(URLMON_OPTION_URL_ENCODING, &encoding,
                                 sizeof(encoding)-1, &size, 0);
    FUNC0(hres == E_INVALIDARG, "UrlMkGetSessionOption failed: %08x\n", hres);
    FUNC0(encoding == 0xdeadbeef, "encoding = %08x, exepcted 0xdeadbeef\n", encoding);
    FUNC0(size == 0xdeadbeef, "size=%d\n", size);

    size = encoding = 0xdeadbeef;
    hres = FUNC1(URLMON_OPTION_URL_ENCODING, NULL,
                                 sizeof(encoding)-1, &size, 0);
    FUNC0(hres == E_INVALIDARG, "UrlMkGetSessionOption failed: %08x\n", hres);
    FUNC0(encoding == 0xdeadbeef, "encoding = %08x, exepcted 0xdeadbeef\n", encoding);
    FUNC0(size == 0xdeadbeef, "size=%d\n", size);

    encoding = 0xdeadbeef;
    hres = FUNC1(URLMON_OPTION_URL_ENCODING, &encoding,
                                 sizeof(encoding)-1, NULL, 0);
    FUNC0(hres == E_INVALIDARG, "UrlMkGetSessionOption failed: %08x\n", hres);
    FUNC0(encoding == 0xdeadbeef, "encoding = %08x, exepcted 0xdeadbeef\n", encoding);
}