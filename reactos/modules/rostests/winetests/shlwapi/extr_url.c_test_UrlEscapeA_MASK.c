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
struct TYPE_3__ {char* url; char* expectret; char* expecturl; int /*<<< orphan*/  flags; } ;
typedef  char* HRESULT ;
typedef  int DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 char* E_INVALIDARG ; 
 char* E_NOTIMPL ; 
 char* E_POINTER ; 
 int INTERNET_MAX_URL_LENGTH ; 
 TYPE_1__* TEST_ESCAPE ; 
 int /*<<< orphan*/  URL_ESCAPE_AS_UTF8 ; 
 int /*<<< orphan*/  URL_ESCAPE_SPACES_ONLY ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 char* FUNC3 (char*,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    DWORD size = 0;
    HRESULT ret;
    unsigned int i;
    char empty_string[] = "";

    if (!&pUrlEscapeA) {
        FUNC5("UrlEscapeA not found\n");
        return;
    }

    ret = FUNC3("/woningplan/woonkamer basis.swf", NULL, &size, URL_ESCAPE_SPACES_ONLY);
    FUNC2(ret == E_INVALIDARG, "got %x, expected %x\n", ret, E_INVALIDARG);
    FUNC2(size == 0, "got %d, expected %d\n", size, 0);

    size = 0;
    ret = FUNC3("/woningplan/woonkamer basis.swf", empty_string, &size, URL_ESCAPE_SPACES_ONLY);
    FUNC2(ret == E_INVALIDARG, "got %x, expected %x\n", ret, E_INVALIDARG);
    FUNC2(size == 0, "got %d, expected %d\n", size, 0);

    size = 1;
    ret = FUNC3("/woningplan/woonkamer basis.swf", NULL, &size, URL_ESCAPE_SPACES_ONLY);
    FUNC2(ret == E_INVALIDARG, "got %x, expected %x\n", ret, E_INVALIDARG);
    FUNC2(size == 1, "got %d, expected %d\n", size, 1);

    size = 1;
    ret = FUNC3("/woningplan/woonkamer basis.swf", empty_string, NULL, URL_ESCAPE_SPACES_ONLY);
    FUNC2(ret == E_INVALIDARG, "got %x, expected %x\n", ret, E_INVALIDARG);
    FUNC2(size == 1, "got %d, expected %d\n", size, 1);

    size = 1;
    empty_string[0] = 127;
    ret = FUNC3("/woningplan/woonkamer basis.swf", empty_string, &size, URL_ESCAPE_SPACES_ONLY);
    FUNC2(ret == E_POINTER, "got %x, expected %x\n", ret, E_POINTER);
    FUNC2(size == 34, "got %d, expected %d\n", size, 34);
    FUNC2(empty_string[0] == 127, "String has changed, empty_string[0] = %d\n", empty_string[0]);

    size = 1;
    empty_string[0] = 127;
    ret = FUNC3("/woningplan/woonkamer basis.swf", empty_string, &size, URL_ESCAPE_AS_UTF8);
    FUNC2(ret == E_NOTIMPL || FUNC1(ret == E_POINTER), /* < Win7/Win2k8 */
        "got %x, expected %x\n", ret, E_NOTIMPL);
    FUNC2(size == 1 || FUNC1(size == 34), /* < Win7/Win2k8 */
        "got %d, expected %d\n", size, 1);
    FUNC2(empty_string[0] == 127, "String has changed, empty_string[0] = %d\n", empty_string[0]);

    for (i = 0; i < FUNC0(TEST_ESCAPE); i++) {
        CHAR ret_url[INTERNET_MAX_URL_LENGTH];

        size = INTERNET_MAX_URL_LENGTH;
        ret = FUNC3(TEST_ESCAPE[i].url, ret_url, &size, TEST_ESCAPE[i].flags);
        FUNC2(ret == TEST_ESCAPE[i].expectret, "UrlEscapeA returned 0x%08x instead of 0x%08x for \"%s\"\n",
            ret, TEST_ESCAPE[i].expectret, TEST_ESCAPE[i].url);
        FUNC2(!FUNC4(ret_url, TEST_ESCAPE[i].expecturl), "Expected \"%s\", but got \"%s\" for \"%s\"\n",
            TEST_ESCAPE[i].expecturl, ret_url, TEST_ESCAPE[i].url);
    }
}