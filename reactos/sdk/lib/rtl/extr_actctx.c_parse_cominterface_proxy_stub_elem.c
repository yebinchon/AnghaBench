
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlstr_t ;
typedef int xmlbuf_t ;
struct TYPE_4__ {void* tlib; int mask; void* base; void* name; void* iid; } ;
struct TYPE_5__ {TYPE_1__ ifaceps; } ;
struct entity {TYPE_2__ u; } ;
struct dll_redirect {int entities; } ;
struct actctx_loader {TYPE_3__* actctx; } ;
typedef int UNICODE_STRING ;
struct TYPE_6__ {int sections; } ;
typedef scalar_t__ BOOL ;


 int ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION ;
 int BaseIface ;
 int DPRINT1 (char*,int *,int *) ;
 scalar_t__ FALSE ;
 int IFACEREDIRECT_SECTION ;
 int NumMethods ;
 scalar_t__ TRUE ;
 struct entity* add_entity (int *,int ) ;
 int asmv1W ;
 int baseInterfaceW ;
 int comInterfaceProxyStubW ;
 int g_nameW ;
 int iidW ;
 scalar_t__ next_xml_attr (int *,int *,int *,scalar_t__*,scalar_t__*) ;
 int nummethodsW ;
 scalar_t__ parse_expect_end_elem (int *,int ,int ) ;
 int parse_nummethods (int *,struct entity*) ;
 int proxyStubClsid32W ;
 int threadingmodelW ;
 int tlbidW ;
 int xmlstr2unicode (int *) ;
 scalar_t__ xmlstr_cmp (int *,int ) ;
 void* xmlstrdupW (int *) ;

__attribute__((used)) static BOOL parse_cominterface_proxy_stub_elem(xmlbuf_t* xmlbuf, struct dll_redirect* dll, struct actctx_loader* acl)
{
    xmlstr_t attr_name, attr_value;
    BOOL end = FALSE, error;
    struct entity* entity;
    UNICODE_STRING attr_valueU, attr_nameU;

    if (!(entity = add_entity(&dll->entities, ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION)))
        return FALSE;

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (xmlstr_cmp(&attr_name, iidW))
        {
            if (!(entity->u.ifaceps.iid = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, g_nameW))
        {
            if (!(entity->u.ifaceps.name = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, baseInterfaceW))
        {
            if (!(entity->u.ifaceps.base = xmlstrdupW(&attr_value))) return FALSE;
            entity->u.ifaceps.mask |= BaseIface;
        }
        else if (xmlstr_cmp(&attr_name, nummethodsW))
        {
            if (!(parse_nummethods(&attr_value, entity))) return FALSE;
            entity->u.ifaceps.mask |= NumMethods;
        }
        else if (xmlstr_cmp(&attr_name, tlbidW))
        {
            if (!(entity->u.ifaceps.tlib = xmlstrdupW(&attr_value))) return FALSE;
        }

        else if (xmlstr_cmp(&attr_name, proxyStubClsid32W) || xmlstr_cmp(&attr_name, threadingmodelW))
        {
        }
        else
        {
            attr_nameU = xmlstr2unicode(&attr_name);
            attr_valueU = xmlstr2unicode(&attr_value);
            DPRINT1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error) return FALSE;
    acl->actctx->sections |= IFACEREDIRECT_SECTION;
    if (end) return TRUE;

    return parse_expect_end_elem(xmlbuf, comInterfaceProxyStubW, asmv1W);
}
