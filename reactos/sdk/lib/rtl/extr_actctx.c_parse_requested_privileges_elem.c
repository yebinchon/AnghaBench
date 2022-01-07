
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlstr_t ;
typedef int xmlbuf_t ;
struct assembly {int dummy; } ;
struct actctx_loader {int dummy; } ;
typedef int UNICODE_STRING ;
typedef scalar_t__ BOOL ;


 int DPRINT1 (char*,int *) ;
 scalar_t__ TRUE ;
 int asmv2W ;
 scalar_t__ next_xml_elem (int *,int *) ;
 scalar_t__ parse_end_element (int *) ;
 scalar_t__ parse_requested_execution_level_elem (int *,struct assembly*,struct actctx_loader*) ;
 scalar_t__ parse_unknown_elem (int *,int *) ;
 int requestedExecutionLevelW ;
 int requestedPrivilegesW ;
 scalar_t__ xml_elem_cmp (int *,int ,int ) ;
 scalar_t__ xml_elem_cmp_end (int *,int ,int ) ;
 int xmlstr2unicode (int *) ;

__attribute__((used)) static BOOL parse_requested_privileges_elem(xmlbuf_t* xmlbuf, struct assembly* assembly, struct actctx_loader *acl)
{
    xmlstr_t elem;
    BOOL ret = TRUE;

    while (ret && (ret = next_xml_elem(xmlbuf, &elem)))
    {
        if (xml_elem_cmp_end(&elem, requestedPrivilegesW, asmv2W))
        {
            ret = parse_end_element(xmlbuf);
            break;
        }
        else if (xml_elem_cmp(&elem, requestedExecutionLevelW, asmv2W))
            ret = parse_requested_execution_level_elem(xmlbuf, assembly, acl);
        else
        {
            UNICODE_STRING elemU = xmlstr2unicode(&elem);
            DPRINT1("unknown elem %wZ\n", &elemU);
            ret = parse_unknown_elem(xmlbuf, &elem);
        }
    }

    return ret;
}
