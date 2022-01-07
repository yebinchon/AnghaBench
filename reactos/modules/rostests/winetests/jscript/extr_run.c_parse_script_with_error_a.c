
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SCODE ;
typedef char const* LPCSTR ;
typedef int LONG ;
typedef int BSTR ;


 int SCRIPTITEM_GLOBALMEMBERS ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int parse_script_with_error (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void parse_script_with_error_a(const char *src, SCODE errorcode, ULONG line, LONG pos, LPCSTR source, LPCSTR desc, LPCSTR linetext)
{
    BSTR tmp, script_source, description, line_text;

    tmp = a2bstr(src);
    script_source = a2bstr(source);
    description = a2bstr(desc);
    line_text = a2bstr(linetext);

    parse_script_with_error(SCRIPTITEM_GLOBALMEMBERS, tmp, errorcode, line, pos, script_source, description, line_text);

    SysFreeString(line_text);
    SysFreeString(description);
    SysFreeString(script_source);
    SysFreeString(tmp);
}
