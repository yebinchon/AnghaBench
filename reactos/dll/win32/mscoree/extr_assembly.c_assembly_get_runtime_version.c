
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* metadatahdr; } ;
struct TYPE_4__ {int Version; } ;
typedef int LPSTR ;
typedef int HRESULT ;
typedef TYPE_2__ ASSEMBLY ;


 int S_OK ;

HRESULT assembly_get_runtime_version(ASSEMBLY *assembly, LPSTR *version)
{
    *version = assembly->metadatahdr->Version;

    return S_OK;
}
