
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlstr_t ;
typedef int xmlbuf_t ;
struct TYPE_4__ {void* version; void* clsid; void* name; } ;
struct TYPE_5__ {TYPE_1__ clrsurrogate; } ;
struct entity {TYPE_2__ u; } ;
struct assembly {int entities; } ;
struct actctx_loader {TYPE_3__* actctx; } ;
typedef int UNICODE_STRING ;
struct TYPE_6__ {int sections; } ;
typedef scalar_t__ BOOL ;


 int ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES ;
 int CLRSURROGATES_SECTION ;
 int DPRINT1 (char*,int *,int *) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 struct entity* add_entity (int *,int ) ;
 int asmv1W ;
 int clrSurrogateW ;
 int clsidW ;
 int g_nameW ;
 scalar_t__ next_xml_attr (int *,int *,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ parse_expect_end_elem (int *,int ,int ) ;
 int runtimeVersionW ;
 int xmlstr2unicode (int *) ;
 scalar_t__ xmlstr_cmp (int *,int ) ;
 void* xmlstrdupW (int *) ;

__attribute__((used)) static BOOL parse_clr_surrogate_elem(xmlbuf_t* xmlbuf, struct assembly* assembly, struct actctx_loader *acl)
{
    xmlstr_t attr_name, attr_value;
    UNICODE_STRING attr_nameU, attr_valueU;
    BOOL end = FALSE, error;
    struct entity* entity;

    entity = add_entity(&assembly->entities, ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES);
    if (!entity) return FALSE;

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (xmlstr_cmp(&attr_name, g_nameW))
        {
            if (!(entity->u.clrsurrogate.name = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, clsidW))
        {
            if (!(entity->u.clrsurrogate.clsid = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, runtimeVersionW))
        {
            if (!(entity->u.clrsurrogate.version = xmlstrdupW(&attr_value))) return FALSE;
        }
        else
        {
            attr_nameU = xmlstr2unicode(&attr_name);
            attr_valueU = xmlstr2unicode(&attr_value);
            DPRINT1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error) return FALSE;
    acl->actctx->sections |= CLRSURROGATES_SECTION;
    if (end) return TRUE;

    return parse_expect_end_elem(xmlbuf, clrSurrogateW, asmv1W);
}
