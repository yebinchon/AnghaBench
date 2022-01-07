
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* lpadesc; TYPE_2__* lptdesc; } ;
struct TYPE_7__ {int vt; TYPE_1__ u; } ;
typedef TYPE_2__ TYPEDESC ;


 int CoTaskMemFree (TYPE_2__*) ;



 int free_embedded_arraydesc (TYPE_2__*) ;

__attribute__((used)) static void free_embedded_typedesc(TYPEDESC *tdesc)
{
    switch(tdesc->vt)
    {
    case 129:
    case 128:
        free_embedded_typedesc(tdesc->u.lptdesc);
        CoTaskMemFree(tdesc->u.lptdesc);
        break;
    case 130:
        free_embedded_arraydesc(tdesc->u.lpadesc);
        CoTaskMemFree(tdesc->u.lpadesc);
        break;
    }
}
