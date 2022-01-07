
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* lpadesc; TYPE_3__* lptdesc; } ;
struct TYPE_8__ {int vt; TYPE_1__ u; } ;
struct TYPE_9__ {TYPE_2__ tdescElem; } ;
typedef TYPE_3__ ARRAYDESC ;


 int CoTaskMemFree (TYPE_3__*) ;



 int free_embedded_typedesc (TYPE_3__*) ;

__attribute__((used)) static void free_embedded_arraydesc(ARRAYDESC *adesc)
{
    switch(adesc->tdescElem.vt)
    {
    case 129:
    case 128:
        free_embedded_typedesc(adesc->tdescElem.u.lptdesc);
        CoTaskMemFree(adesc->tdescElem.u.lptdesc);
        break;
    case 130:
        free_embedded_arraydesc(adesc->tdescElem.u.lpadesc);
        CoTaskMemFree(adesc->tdescElem.u.lpadesc);
        break;
    }
}
