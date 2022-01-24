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
struct TYPE_4__ {int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ nsWineURI ;
typedef  int /*<<< orphan*/  nsACString ;
typedef  int /*<<< orphan*/  Uri_PROPERTY ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  NS_ERROR_UNEXPECTED ; 
 int /*<<< orphan*/  NS_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static nsresult FUNC10(nsWineURI *This, Uri_PROPERTY prop, nsACString *ret)
{
    char *vala;
    BSTR val;
    HRESULT hres;

    if(!FUNC6(This))
        return NS_ERROR_UNEXPECTED;

    hres = FUNC1(This->uri, prop, &val, 0);
    if(FUNC0(hres)) {
        FUNC4("GetPropertyBSTR failed: %08x\n", hres);
        return NS_ERROR_UNEXPECTED;
    }

    vala = FUNC8(val);
    FUNC2(val);
    if(!vala)
        return NS_ERROR_OUT_OF_MEMORY;

    FUNC3("ret %s\n", FUNC5(vala));
    FUNC9(ret, vala);
    FUNC7(vala);
    return NS_OK;
}