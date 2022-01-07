
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ptr; int len; } ;
typedef TYPE_1__ xmlstr_t ;
typedef int xmlbuf_t ;
struct assembly_identity {void* language; void* public_key; void* arch; int version; void* type; void* name; } ;
typedef int UNICODE_STRING ;
typedef scalar_t__ BOOL ;
typedef int ACTIVATION_CONTEXT ;


 int DPRINT (char*,int ,int ) ;
 int DPRINT1 (char*,int *,int *) ;
 scalar_t__ FALSE ;
 int asmv1W ;
 int assemblyIdentityW ;
 int g_nameW ;
 int languageW ;
 scalar_t__ next_xml_attr (int *,TYPE_1__*,TYPE_1__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ parse_expect_end_elem (int *,int ,int ) ;
 int parse_version (TYPE_1__*,int *) ;
 int processorArchitectureW ;
 int publicKeyTokenW ;
 int typeW ;
 int versionW ;
 int xmlstr2unicode (TYPE_1__*) ;
 scalar_t__ xmlstr_cmp (TYPE_1__*,int ) ;
 void* xmlstrdupW (TYPE_1__*) ;

__attribute__((used)) static BOOL parse_assembly_identity_elem(xmlbuf_t* xmlbuf, ACTIVATION_CONTEXT* actctx,
                                         struct assembly_identity* ai)
{
    xmlstr_t attr_name, attr_value;
    BOOL end = FALSE, error;
    UNICODE_STRING attr_valueU, attr_nameU;

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (xmlstr_cmp(&attr_name, g_nameW))
        {
            if (!(ai->name = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, typeW))
        {
            if (!(ai->type = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, versionW))
        {
            if (!parse_version(&attr_value, &ai->version)) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, processorArchitectureW))
        {
            if (!(ai->arch = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, publicKeyTokenW))
        {
            if (!(ai->public_key = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, languageW))
        {
            DPRINT("Unsupported yet language attribute (%.*S)\n",
                   attr_value.len, attr_value.ptr);
            if (!(ai->language = xmlstrdupW(&attr_value))) return FALSE;
        }
        else
        {
            attr_nameU = xmlstr2unicode(&attr_name);
            attr_valueU = xmlstr2unicode(&attr_value);
            DPRINT1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || end) return end;
    return parse_expect_end_elem(xmlbuf, assemblyIdentityW, asmv1W);
}
