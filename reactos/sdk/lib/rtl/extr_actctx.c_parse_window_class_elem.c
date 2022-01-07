
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlstr_t ;
typedef int xmlbuf_t ;
struct TYPE_4__ {int name; void* versioned; } ;
struct TYPE_5__ {TYPE_1__ class; } ;
struct entity {TYPE_2__ u; } ;
struct dll_redirect {int entities; } ;
struct actctx_loader {TYPE_3__* actctx; } ;
typedef int UNICODE_STRING ;
struct TYPE_6__ {int sections; } ;
typedef void* BOOL ;


 int ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION ;
 int DPRINT1 (char*,int *,...) ;
 void* FALSE ;
 void* TRUE ;
 int WINDOWCLASS_SECTION ;
 struct entity* add_entity (int *,int ) ;
 scalar_t__ next_xml_attr (int *,int *,int *,void**,void**) ;
 void* next_xml_elem (int *,int *) ;
 int noW ;
 void* parse_end_element (int *) ;
 int parse_text_content (int *,int *) ;
 void* parse_unknown_elem (int *,int *) ;
 int versionedW ;
 int windowClassW ;
 int xmlstr2unicode (int *) ;
 scalar_t__ xmlstr_cmp (int *,int ) ;
 scalar_t__ xmlstr_cmp_end (int *,int ) ;
 scalar_t__ xmlstr_cmpi (int *,int ) ;
 int xmlstrdupW (int *) ;
 int yesW ;

__attribute__((used)) static BOOL parse_window_class_elem(xmlbuf_t* xmlbuf, struct dll_redirect* dll, struct actctx_loader* acl)
{
    xmlstr_t elem, content, attr_name, attr_value;
    BOOL end = FALSE, ret = TRUE, error;
    struct entity* entity;
    UNICODE_STRING elemU, attr_nameU, attr_valueU;

    if (!(entity = add_entity(&dll->entities, ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION)))
        return FALSE;

    entity->u.class.versioned = TRUE;
    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        if (xmlstr_cmp(&attr_name, versionedW))
        {
            if (xmlstr_cmpi(&attr_value, noW))
                entity->u.class.versioned = FALSE;
            else if (!xmlstr_cmpi(&attr_value, yesW))
               return FALSE;
        }
        else
        {
            attr_nameU = xmlstr2unicode(&attr_name);
            attr_valueU = xmlstr2unicode(&attr_value);
            DPRINT1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || end) return end;

    if (!parse_text_content(xmlbuf, &content)) return FALSE;

    if (!(entity->u.class.name = xmlstrdupW(&content))) return FALSE;

    acl->actctx->sections |= WINDOWCLASS_SECTION;

    while (ret && (ret = next_xml_elem(xmlbuf, &elem)))
    {
        if (xmlstr_cmp_end(&elem, windowClassW))
        {
            ret = parse_end_element(xmlbuf);
            break;
        }
        else
        {
            elemU = xmlstr2unicode(&elem);
            DPRINT1("unknown elem %wZ\n", &elemU);
            ret = parse_unknown_elem(xmlbuf, &elem);
        }
    }

    return ret;
}
