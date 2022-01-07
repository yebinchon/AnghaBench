
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxwriter_props_t {int bom; int disable_escape; int indent; int omitdecl; int standalone; int encoding; scalar_t__ clsid; } ;
typedef int VARIANT_BOOL ;
typedef int IMXWriter ;
typedef int HRESULT ;
typedef int BSTR ;


 int CLSCTX_INPROC_SERVER ;
 int CoCreateInstance (scalar_t__,int *,int ,int *,void**) ;
 int EXPECT_HR (int ,int ) ;
 int IID_IMXWriter ;
 int IMXWriter_Release (int *) ;
 int IMXWriter_get_byteOrderMark (int *,int*) ;
 int IMXWriter_get_disableOutputEscaping (int *,int*) ;
 int IMXWriter_get_encoding (int *,int *) ;
 int IMXWriter_get_indent (int *,int*) ;
 int IMXWriter_get_omitXMLDeclaration (int *,int*) ;
 int IMXWriter_get_standalone (int *,int*) ;
 int S_OK ;
 int SysFreeString (int ) ;
 int _bstr_ (int) ;
 int is_clsid_supported (scalar_t__,int ) ;
 int lstrcmpW (int ,int ) ;
 int mxwriter_support_data ;
 int ok (int,char*,int,int,int) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_mxwriter_default_properties(const struct mxwriter_props_t *table)
{
    int i = 0;

    while (table->clsid)
    {
        IMXWriter *writer;
        VARIANT_BOOL b;
        BSTR encoding;
        HRESULT hr;

        if (!is_clsid_supported(table->clsid, mxwriter_support_data))
        {
            table++;
            i++;
            continue;
        }

        hr = CoCreateInstance(table->clsid, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IMXWriter, (void**)&writer);
        EXPECT_HR(hr, S_OK);

        b = !table->bom;
        hr = IMXWriter_get_byteOrderMark(writer, &b);
        EXPECT_HR(hr, S_OK);
        ok(table->bom == b, "test %d: got BOM %d, expected %d\n", i, b, table->bom);

        b = !table->disable_escape;
        hr = IMXWriter_get_disableOutputEscaping(writer, &b);
        EXPECT_HR(hr, S_OK);
        ok(table->disable_escape == b, "test %d: got disable escape %d, expected %d\n", i, b,
           table->disable_escape);

        b = !table->indent;
        hr = IMXWriter_get_indent(writer, &b);
        EXPECT_HR(hr, S_OK);
        ok(table->indent == b, "test %d: got indent %d, expected %d\n", i, b, table->indent);

        b = !table->omitdecl;
        hr = IMXWriter_get_omitXMLDeclaration(writer, &b);
        EXPECT_HR(hr, S_OK);
        ok(table->omitdecl == b, "test %d: got omitdecl %d, expected %d\n", i, b, table->omitdecl);

        b = !table->standalone;
        hr = IMXWriter_get_standalone(writer, &b);
        EXPECT_HR(hr, S_OK);
        ok(table->standalone == b, "test %d: got standalone %d, expected %d\n", i, b, table->standalone);

        hr = IMXWriter_get_encoding(writer, &encoding);
        EXPECT_HR(hr, S_OK);
        ok(!lstrcmpW(encoding, _bstr_(table->encoding)), "test %d: got encoding %s, expected %s\n",
            i, wine_dbgstr_w(encoding), table->encoding);
        SysFreeString(encoding);

        IMXWriter_Release(writer);

        table++;
        i++;
    }
}
