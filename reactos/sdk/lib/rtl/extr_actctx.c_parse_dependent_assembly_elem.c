
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ xmlstr_t ;
typedef int xmlbuf_t ;
struct assembly_identity {void* delayed; void* optional; } ;
struct actctx_loader {int actctx; } ;
typedef int ai ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
typedef void* BOOL ;


 int DPRINT1 (char*,int ,...) ;
 void* FALSE ;
 void* TRUE ;
 int add_dependent_assembly_id (struct actctx_loader*,struct assembly_identity*) ;
 int asmv1W ;
 int assemblyIdentityW ;
 char const* bindingRedirectW ;
 int dependentAssemblyW ;
 int memset (struct assembly_identity*,int ,int) ;
 scalar_t__ next_xml_attr (int *,TYPE_1__*,TYPE_1__*,void**,void**) ;
 void* next_xml_elem (int *,TYPE_1__*) ;
 int parse_assembly_identity_elem (int *,int ,struct assembly_identity*) ;
 void* parse_binding_redirect_elem (int *) ;
 void* parse_end_element (int *) ;
 int parse_expect_elem (int *,int ,int ) ;
 void* parse_unknown_elem (int *,TYPE_1__*) ;
 int xmlstr2unicode (TYPE_1__*) ;
 void* xmlstr_cmp (TYPE_1__*,char const*) ;
 scalar_t__ xmlstr_cmp_end (TYPE_1__*,int ) ;

__attribute__((used)) static BOOL parse_dependent_assembly_elem(xmlbuf_t* xmlbuf, struct actctx_loader* acl, BOOL optional)
{
    struct assembly_identity ai;
    xmlstr_t elem, attr_name, attr_value;
    BOOL end = FALSE, error = FALSE, ret = TRUE, delayed = FALSE;

    UNICODE_STRING elem1U, elem2U;

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        static const WCHAR allowDelayedBindingW[] = {'a','l','l','o','w','D','e','l','a','y','e','d','B','i','n','d','i','n','g',0};
        static const WCHAR trueW[] = {'t','r','u','e',0};

        if (xmlstr_cmp(&attr_name, allowDelayedBindingW))
            delayed = xmlstr_cmp(&attr_value, trueW);
        else
        {
            elem1U = xmlstr2unicode(&attr_name);
            elem2U = xmlstr2unicode(&attr_value);
            DPRINT1("unknown attr %s=%s\n", &elem1U, &elem2U);
        }
    }

    if (error || end) return end;

    memset(&ai, 0, sizeof(ai));
    ai.optional = optional;
    ai.delayed = delayed;

    if (!parse_expect_elem(xmlbuf, assemblyIdentityW, asmv1W) ||
        !parse_assembly_identity_elem(xmlbuf, acl->actctx, &ai))
        return FALSE;




    if (!add_dependent_assembly_id(acl, &ai)) return FALSE;

    while (ret && (ret = next_xml_elem(xmlbuf, &elem)))
    {
        if (xmlstr_cmp_end(&elem, dependentAssemblyW))
        {
            ret = parse_end_element(xmlbuf);
            break;
        }
        else if (xmlstr_cmp(&elem, bindingRedirectW))
        {
            ret = parse_binding_redirect_elem(xmlbuf);
        }
        else
        {
            DPRINT1("unknown elem %S\n", elem.ptr);
            ret = parse_unknown_elem(xmlbuf, &elem);
        }
    }

    return ret;
}
