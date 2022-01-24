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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMHTMLScriptElement ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  char PRUnichar ;
typedef  int /*<<< orphan*/  HTMLInnerWindow ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLElement ; 
 scalar_t__ NS_OK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static BOOL FUNC13(HTMLInnerWindow *window, nsIDOMHTMLScriptElement *nsscript, GUID *guid)
{
    nsIDOMHTMLElement *nselem;
    const PRUnichar *language;
    nsAString val_str;
    BOOL ret = FALSE;
    nsresult nsres;

    static const PRUnichar languageW[] = {'l','a','n','g','u','a','g','e',0};

    FUNC9(&val_str, NULL);

    nsres = FUNC11(nsscript, &val_str);
    if(FUNC1(nsres)) {
        const PRUnichar *type;

        FUNC8(&val_str, &type);
        if(*type) {
            ret = FUNC6(type, guid);
            FUNC7(&val_str);
            return ret;
        }
    }else {
        FUNC0("GetType failed: %08x\n", nsres);
    }

    nsres = FUNC12(nsscript, &IID_nsIDOMHTMLElement, (void**)&nselem);
    FUNC2(nsres == NS_OK);

    nsres = FUNC4(nselem, languageW, &val_str, &language);
    FUNC10(nselem);
    if(FUNC1(nsres)) {
        if(*language) {
            ret = FUNC5(language, guid);
        }else {
            *guid = FUNC3(window);
            ret = TRUE;
        }
        FUNC7(&val_str);
    }

    return ret;
}