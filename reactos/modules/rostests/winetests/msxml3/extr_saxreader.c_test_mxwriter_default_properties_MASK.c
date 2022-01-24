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
struct mxwriter_props_t {int bom; int disable_escape; int indent; int omitdecl; int standalone; int encoding; scalar_t__ clsid; } ;
typedef  int VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IMXWriter ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IMXWriter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxwriter_support_data ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(const struct mxwriter_props_t *table)
{
    int i = 0;

    while (table->clsid)
    {
        IMXWriter *writer;
        VARIANT_BOOL b;
        BSTR encoding;
        HRESULT hr;

        if (!FUNC11(table->clsid, mxwriter_support_data))
        {
            table++;
            i++;
            continue;
        }

        hr = FUNC0(table->clsid, NULL, CLSCTX_INPROC_SERVER,
            &IID_IMXWriter, (void**)&writer);
        FUNC1(hr, S_OK);

        b = !table->bom;
        hr = FUNC3(writer, &b);
        FUNC1(hr, S_OK);
        FUNC13(table->bom == b, "test %d: got BOM %d, expected %d\n", i, b, table->bom);

        b = !table->disable_escape;
        hr = FUNC4(writer, &b);
        FUNC1(hr, S_OK);
        FUNC13(table->disable_escape == b, "test %d: got disable escape %d, expected %d\n", i, b,
           table->disable_escape);

        b = !table->indent;
        hr = FUNC6(writer, &b);
        FUNC1(hr, S_OK);
        FUNC13(table->indent == b, "test %d: got indent %d, expected %d\n", i, b, table->indent);

        b = !table->omitdecl;
        hr = FUNC7(writer, &b);
        FUNC1(hr, S_OK);
        FUNC13(table->omitdecl == b, "test %d: got omitdecl %d, expected %d\n", i, b, table->omitdecl);

        b = !table->standalone;
        hr = FUNC8(writer, &b);
        FUNC1(hr, S_OK);
        FUNC13(table->standalone == b, "test %d: got standalone %d, expected %d\n", i, b, table->standalone);

        hr = FUNC5(writer, &encoding);
        FUNC1(hr, S_OK);
        FUNC13(!FUNC12(encoding, FUNC10(table->encoding)), "test %d: got encoding %s, expected %s\n",
            i, FUNC14(encoding), table->encoding);
        FUNC9(encoding);

        FUNC2(writer);

        table++;
        i++;
    }
}