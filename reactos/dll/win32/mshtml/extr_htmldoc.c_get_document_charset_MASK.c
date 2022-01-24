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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ charset; int /*<<< orphan*/  nsdoc; } ;
typedef  scalar_t__ PRUnichar ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__ const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

UINT FUNC9(HTMLDocumentNode *doc)
{
    nsAString charset_str;
    UINT ret = 0;
    nsresult nsres;

    if(doc->charset)
        return doc->charset;

    FUNC7(&charset_str, NULL);
    nsres = FUNC8(doc->nsdoc, &charset_str);
    if(FUNC1(nsres)) {
        const PRUnichar *charset;

        FUNC6(&charset_str, &charset);

        if(*charset) {
            BSTR str = FUNC2(charset);
            ret = FUNC4(str);
            FUNC3(str);
        }
    }else {
        FUNC0("GetCharset failed: %08x\n", nsres);
    }
    FUNC5(&charset_str);

    if(!ret)
        return CP_UTF8;

    return doc->charset = ret;
}