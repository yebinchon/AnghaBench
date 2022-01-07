
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmlstr_t ;
typedef int xmlbuf_t ;
struct TYPE_5__ {scalar_t__ num; } ;
struct TYPE_6__ {TYPE_1__ progids; void* progid; void* miscstatusdocprint; void* miscstatusicon; void* miscstatusthumbnail; void* miscstatuscontent; void* miscstatus; int model; void* tlbid; void* clsid; } ;
struct TYPE_7__ {TYPE_2__ comclass; } ;
struct entity {TYPE_3__ u; } ;
struct dll_redirect {int entities; } ;
struct actctx_loader {TYPE_4__* actctx; } ;
typedef int UNICODE_STRING ;
struct TYPE_8__ {int sections; } ;
typedef scalar_t__ BOOL ;


 int ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION ;
 int DPRINT1 (char*,int *,...) ;
 scalar_t__ FALSE ;
 int PROGIDREDIRECT_SECTION ;
 int SERVERREDIRECT_SECTION ;
 scalar_t__ TRUE ;
 struct entity* add_entity (int *,int ) ;
 int clsidW ;
 int comClassW ;
 int descriptionW ;
 int miscstatusW ;
 int miscstatuscontentW ;
 int miscstatusdocprintW ;
 int miscstatusiconW ;
 int miscstatusthumbnailW ;
 scalar_t__ next_xml_attr (int *,int *,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ next_xml_elem (int *,int *) ;
 void* parse_com_class_misc (int *) ;
 scalar_t__ parse_com_class_progid (int *,struct entity*) ;
 int parse_com_class_threadingmodel (int *) ;
 scalar_t__ parse_end_element (int *) ;
 scalar_t__ parse_unknown_elem (int *,int *) ;
 int progidW ;
 int threadingmodelW ;
 int tlbidW ;
 int xmlstr2unicode (int *) ;
 scalar_t__ xmlstr_cmp (int *,int ) ;
 scalar_t__ xmlstr_cmp_end (int *,int ) ;
 void* xmlstrdupW (int *) ;

__attribute__((used)) static BOOL parse_com_class_elem(xmlbuf_t* xmlbuf, struct dll_redirect* dll, struct actctx_loader *acl)
{
    xmlstr_t elem, attr_name, attr_value;
    BOOL ret = TRUE, end = FALSE, error;
    struct entity* entity;
    UNICODE_STRING attr_valueU, attr_nameU;

    if (!(entity = add_entity(&dll->entities, ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION)))
        return FALSE;

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (xmlstr_cmp(&attr_name, clsidW))
        {
            if (!(entity->u.comclass.clsid = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, progidW))
        {
            if (!(entity->u.comclass.progid = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, tlbidW))
        {
            if (!(entity->u.comclass.tlbid = xmlstrdupW(&attr_value))) return FALSE;
        }
        else if (xmlstr_cmp(&attr_name, threadingmodelW))
        {
            entity->u.comclass.model = parse_com_class_threadingmodel(&attr_value);
        }
        else if (xmlstr_cmp(&attr_name, miscstatusW))
        {
            entity->u.comclass.miscstatus = parse_com_class_misc(&attr_value);
        }
        else if (xmlstr_cmp(&attr_name, miscstatuscontentW))
        {
            entity->u.comclass.miscstatuscontent = parse_com_class_misc(&attr_value);
        }
        else if (xmlstr_cmp(&attr_name, miscstatusthumbnailW))
        {
            entity->u.comclass.miscstatusthumbnail = parse_com_class_misc(&attr_value);
        }
        else if (xmlstr_cmp(&attr_name, miscstatusiconW))
        {
            entity->u.comclass.miscstatusicon = parse_com_class_misc(&attr_value);
        }
        else if (xmlstr_cmp(&attr_name, miscstatusdocprintW))
        {
            entity->u.comclass.miscstatusdocprint = parse_com_class_misc(&attr_value);
        }
        else if (xmlstr_cmp(&attr_name, descriptionW))
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

    acl->actctx->sections |= SERVERREDIRECT_SECTION;
    if (entity->u.comclass.progid)
        acl->actctx->sections |= PROGIDREDIRECT_SECTION;

    if (end) return TRUE;

    while (ret && (ret = next_xml_elem(xmlbuf, &elem)))
    {
        if (xmlstr_cmp_end(&elem, comClassW))
        {
            ret = parse_end_element(xmlbuf);
            break;
        }
        else if (xmlstr_cmp(&elem, progidW))
        {
            ret = parse_com_class_progid(xmlbuf, entity);
        }
        else
        {
            attr_nameU = xmlstr2unicode(&elem);
            DPRINT1("unknown elem %wZ\n", &attr_nameU);
            ret = parse_unknown_elem(xmlbuf, &elem);
        }
    }

    if (entity->u.comclass.progids.num)
        acl->actctx->sections |= PROGIDREDIRECT_SECTION;

    return ret;
}
