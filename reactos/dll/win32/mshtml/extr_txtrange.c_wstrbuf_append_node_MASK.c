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
typedef  int /*<<< orphan*/  wstrbuf_t ;
typedef  int /*<<< orphan*/  nsIDOMText ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  ELEMENT_NODE 129 
 int /*<<< orphan*/  IID_nsIDOMText ; 
#define  TEXT_NODE 128 
 int /*<<< orphan*/  brW ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hrW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(wstrbuf_t *buf, nsIDOMNode *node, BOOL ignore_text)
{

    switch(FUNC0(node)) {
    case TEXT_NODE: {
        nsIDOMText *nstext;
        nsAString data_str;
        const PRUnichar *data;

        if(ignore_text)
            break;

        FUNC5(node, &IID_nsIDOMText, (void**)&nstext);

        FUNC4(&data_str, NULL);
        FUNC6(nstext, &data_str);
        FUNC3(&data_str, &data);
        FUNC10(buf, data, FUNC8(data));
        FUNC2(&data_str);

        FUNC7(nstext);

        break;
    }
    case ELEMENT_NODE:
        if(FUNC1(node, brW)) {
            static const WCHAR endlW[] = {'\r','\n'};
            FUNC9(buf, endlW, 2);
        }else if(FUNC1(node, hrW)) {
            static const WCHAR endl2W[] = {'\r','\n','\r','\n'};
            FUNC9(buf, endl2W, 4);
        }
    }
}