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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMComment ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_4__ {int /*<<< orphan*/  nsdoc; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDOMComment ; 
 int /*<<< orphan*/  NS_ERROR_FAILURE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static nsresult FUNC12(HTMLDocumentNode *doc, nsISupports *comment_iface, nsISupports *arg2)
{
    const PRUnichar *comment;
    nsIDOMComment *nscomment;
    PRUnichar *replace_html;
    nsAString comment_str;
    nsresult nsres;

    nsres = FUNC10(comment_iface, &IID_nsIDOMComment, (void**)&nscomment);
    if(FUNC2(nsres)) {
        FUNC0("Could not get nsIDOMComment iface:%08x\n", nsres);
        return nsres;
    }

    FUNC7(&comment_str, NULL);
    nsres = FUNC8(nscomment, &comment_str);
    if(FUNC2(nsres))
        return nsres;

    FUNC6(&comment_str, &comment);
    replace_html = FUNC3(doc, comment);
    FUNC5(&comment_str);

    if(replace_html) {
        HRESULT hres;

        hres = FUNC11(doc->nsdoc, (nsIDOMNode*)nscomment, replace_html);
        FUNC4(replace_html);
        if(FUNC1(hres))
            nsres = NS_ERROR_FAILURE;
    }


    FUNC9(nscomment);
    return nsres;
}