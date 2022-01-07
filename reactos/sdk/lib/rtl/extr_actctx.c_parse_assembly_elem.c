
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlstr_t ;
typedef int xmlbuf_t ;
struct TYPE_6__ {scalar_t__ build; scalar_t__ revision; int minor; int major; } ;
struct assembly_identity {TYPE_3__ version; } ;
struct TYPE_5__ {scalar_t__ build; scalar_t__ revision; int minor; int major; } ;
struct TYPE_4__ {TYPE_2__ version; } ;
struct assembly {scalar_t__ type; TYPE_1__ id; void* no_inherit; } ;
struct actctx_loader {int actctx; } ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
typedef void* BOOL ;


 scalar_t__ APPLICATION_MANIFEST ;
 scalar_t__ ASSEMBLY_MANIFEST ;
 scalar_t__ ASSEMBLY_SHARED_MANIFEST ;
 int DPRINT (char*,int *) ;
 int DPRINT1 (char*,...) ;
 void* FALSE ;
 void* TRUE ;
 int asmv1W ;
 int asmv2W ;
 int assemblyIdentityW ;
 int assemblyW ;
 int clrClassW ;
 int clrSurrogateW ;
 int comInterfaceExternalProxyStubW ;
 int compatibilityNSW ;
 int compatibilityW ;
 int dependencyW ;
 int descriptionW ;
 int fileW ;
 char const* manifestVersionW ;
 char const* manifestv1W ;
 char const* manifestv2W ;
 char const* manifestv3W ;
 scalar_t__ memcmp (TYPE_2__*,TYPE_3__*,int) ;
 scalar_t__ next_xml_attr (int *,int *,int *,void**,void**) ;
 void* next_xml_elem (int *,int *) ;
 char const* noInheritW ;
 int noInheritableW ;
 int parse_assembly_identity_elem (int *,int ,TYPE_1__*) ;
 void* parse_clr_class_elem (int *,struct assembly*,struct actctx_loader*) ;
 void* parse_clr_surrogate_elem (int *,struct assembly*,struct actctx_loader*) ;
 void* parse_com_interface_external_proxy_stub_elem (int *,struct assembly*,struct actctx_loader*) ;
 void* parse_compatibility_elem (int *,struct assembly*,struct actctx_loader*) ;
 void* parse_dependency_elem (int *,struct actctx_loader*) ;
 void* parse_description_elem (int *) ;
 void* parse_end_element (int *) ;
 void* parse_file_elem (int *,struct assembly*,struct actctx_loader*) ;
 int parse_noinherit_elem (int *) ;
 int parse_noinheritable_elem (int *) ;
 void* parse_trust_info_elem (int *,struct assembly*,struct actctx_loader*) ;
 void* parse_unknown_elem (int *,int *) ;
 int trustInfoW ;
 scalar_t__ xml_elem_cmp (int *,int ,int ) ;
 scalar_t__ xml_elem_cmp_end (int *,int ,int ) ;
 char const* xmlnsW ;
 int xmlstr2unicode (int *) ;
 scalar_t__ xmlstr_cmp (int *,char const*) ;

__attribute__((used)) static BOOL parse_assembly_elem(xmlbuf_t* xmlbuf, struct actctx_loader* acl,
                                struct assembly* assembly,
                                struct assembly_identity* expected_ai)
{
    xmlstr_t attr_name, attr_value, elem;
    UNICODE_STRING attr_nameU, attr_valueU;
    BOOL end = FALSE, error, version = FALSE, xmlns = FALSE, ret = TRUE;

    DPRINT("(%p)\n", xmlbuf);

    while (next_xml_attr(xmlbuf, &attr_name, &attr_value, &error, &end))
    {
        attr_nameU = xmlstr2unicode(&attr_name);
        attr_valueU = xmlstr2unicode(&attr_value);

        if (xmlstr_cmp(&attr_name, manifestVersionW))
        {
            static const WCHAR v10W[] = {'1','.','0',0};
            if (!xmlstr_cmp(&attr_value, v10W))
            {
                DPRINT1("wrong version %wZ\n", &attr_valueU);
                return FALSE;
            }
            version = TRUE;
        }
        else if (xmlstr_cmp(&attr_name, xmlnsW))
        {
            if (!xmlstr_cmp(&attr_value, manifestv1W) &&
                !xmlstr_cmp(&attr_value, manifestv2W) &&
                !xmlstr_cmp(&attr_value, manifestv3W))
            {
                DPRINT1("wrong namespace %wZ\n", &attr_valueU);
                return FALSE;
            }
            xmlns = TRUE;
        }
        else
        {
            DPRINT1("unknown attr %wZ=%wZ\n", &attr_nameU, &attr_valueU);
        }
    }

    if (error || end || !xmlns || !version) return FALSE;
    if (!next_xml_elem(xmlbuf, &elem)) return FALSE;

    if (assembly->type == APPLICATION_MANIFEST && xmlstr_cmp(&elem, noInheritW))
    {
        if (!parse_noinherit_elem(xmlbuf) || !next_xml_elem(xmlbuf, &elem))
            return FALSE;
        assembly->no_inherit = TRUE;
    }

    if (xml_elem_cmp(&elem, noInheritableW, asmv1W))
    {
        if (!parse_noinheritable_elem(xmlbuf) || !next_xml_elem(xmlbuf, &elem))
            return FALSE;
    }
    else if ((assembly->type == ASSEMBLY_MANIFEST || assembly->type == ASSEMBLY_SHARED_MANIFEST) &&
             assembly->no_inherit)
        return FALSE;

    while (ret)
    {
        if (xml_elem_cmp_end(&elem, assemblyW, asmv1W))
        {
            ret = parse_end_element(xmlbuf);
            break;
        }
        else if (xml_elem_cmp(&elem, descriptionW, asmv1W))
        {
            ret = parse_description_elem(xmlbuf);
        }
        else if (xml_elem_cmp(&elem, comInterfaceExternalProxyStubW, asmv1W))
        {
            ret = parse_com_interface_external_proxy_stub_elem(xmlbuf, assembly, acl);
        }
        else if (xml_elem_cmp(&elem, dependencyW, asmv1W))
        {
            ret = parse_dependency_elem(xmlbuf, acl);
        }
        else if (xml_elem_cmp(&elem, fileW, asmv1W))
        {
            ret = parse_file_elem(xmlbuf, assembly, acl);
        }
        else if (xml_elem_cmp(&elem, clrClassW, asmv1W))
        {
            ret = parse_clr_class_elem(xmlbuf, assembly, acl);
        }
        else if (xml_elem_cmp(&elem, clrSurrogateW, asmv1W))
        {
            ret = parse_clr_surrogate_elem(xmlbuf, assembly, acl);
        }
        else if (xml_elem_cmp(&elem, trustInfoW, asmv2W) ||
                 xml_elem_cmp(&elem, trustInfoW, asmv1W))
        {
            ret = parse_trust_info_elem(xmlbuf, assembly, acl);
        }
        else if (xml_elem_cmp(&elem, assemblyIdentityW, asmv1W))
        {
            if (!parse_assembly_identity_elem(xmlbuf, acl->actctx, &assembly->id)) return FALSE;

            if (expected_ai)
            {

                if (assembly->type == ASSEMBLY_MANIFEST &&
                    memcmp(&assembly->id.version, &expected_ai->version, sizeof(assembly->id.version)))
                {
                    DPRINT1("wrong version for assembly manifest: %u.%u.%u.%u / %u.%u.%u.%u\n",
                          expected_ai->version.major, expected_ai->version.minor,
                          expected_ai->version.build, expected_ai->version.revision,
                          assembly->id.version.major, assembly->id.version.minor,
                          assembly->id.version.build, assembly->id.version.revision);
                    ret = FALSE;
                }
                else if (assembly->type == ASSEMBLY_SHARED_MANIFEST &&
                         (assembly->id.version.major != expected_ai->version.major ||
                          assembly->id.version.minor != expected_ai->version.minor ||
                          assembly->id.version.build < expected_ai->version.build ||
                          (assembly->id.version.build == expected_ai->version.build &&
                           assembly->id.version.revision < expected_ai->version.revision)))
                {
                    DPRINT1("wrong version for shared assembly manifest\n");
                    ret = FALSE;
                }
            }
        }
        else if (xml_elem_cmp(&elem, compatibilityW, compatibilityNSW))
        {
            ret = parse_compatibility_elem(xmlbuf, assembly, acl);
        }
        else
        {
            attr_nameU = xmlstr2unicode(&elem);
            DPRINT1("unknown element %wZ\n", &attr_nameU);
            ret = parse_unknown_elem(xmlbuf, &elem);
        }
        if (ret) ret = next_xml_elem(xmlbuf, &elem);
    }

    return ret;
}
