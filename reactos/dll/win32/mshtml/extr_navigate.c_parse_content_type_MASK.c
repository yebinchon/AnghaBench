#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* nschannel; } ;
typedef  TYPE_2__ nsChannelBSC ;
typedef  int /*<<< orphan*/  nsACString ;
typedef  int /*<<< orphan*/  charsetW ;
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  nsIHttpChannel_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char) ; 
 size_t FUNC11 (char const*) ; 

__attribute__((used)) static void FUNC12(nsChannelBSC *This, const WCHAR *value)
{
    const WCHAR *ptr;
    size_t len;

    static const WCHAR charsetW[] = {'c','h','a','r','s','e','t','='};

    ptr = FUNC10(value, ';');
    if(!ptr)
        return;

    ptr++;
    while(*ptr && FUNC5(*ptr))
        ptr++;

    len = FUNC11(value);
    if(ptr + sizeof(charsetW)/sizeof(WCHAR) < value+len && !FUNC6(ptr, charsetW, sizeof(charsetW)/sizeof(WCHAR))) {
        size_t charset_len, lena;
        nsACString charset_str;
        const WCHAR *charset;
        char *charseta;

        ptr += sizeof(charsetW)/sizeof(WCHAR);

        if(*ptr == '\'') {
            FUNC0("Quoted value\n");
            return;
        }else {
            charset = ptr;
            while(*ptr && *ptr != ',')
                ptr++;
            charset_len = ptr-charset;
        }

        lena = FUNC1(CP_ACP, 0, charset, charset_len, NULL, 0, NULL, NULL);
        charseta = FUNC3(lena+1);
        if(!charseta)
            return;

        FUNC1(CP_ACP, 0, charset, charset_len, charseta, lena, NULL, NULL);
        charseta[lena] = 0;

        FUNC8(&charset_str, charseta);
        FUNC9(&This->nschannel->nsIHttpChannel_iface, &charset_str);
        FUNC7(&charset_str);
        FUNC4(charseta);
    }else {
        FUNC0("unhandled: %s\n", FUNC2(ptr, len - (ptr-value)));
    }
}