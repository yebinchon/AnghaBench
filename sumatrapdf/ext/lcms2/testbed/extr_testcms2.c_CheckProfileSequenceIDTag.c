
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int n; TYPE_2__* seq; } ;
typedef TYPE_3__ cmsSEQ ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;
struct TYPE_7__ {int ID8; } ;
struct TYPE_8__ {int Description; TYPE_1__ ProfileID; } ;


 int CheckOneStr (int ,int) ;
 int DbgThread () ;
 int SetOneStr (int *,char*,char*) ;
 TYPE_3__* cmsAllocProfileSequenceDescription (int ,int) ;
 int cmsFreeProfileSequenceDescription (int ,TYPE_3__*) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigProfileSequenceIdTag ;
 int cmsWriteTag (int ,int ,int ,TYPE_3__*) ;
 int memcmp (int ,char*,int) ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static
cmsInt32Number CheckProfileSequenceIDTag(cmsInt32Number Pass, cmsHPROFILE hProfile)
{
    cmsSEQ* s;
    cmsInt32Number i;

    switch (Pass) {

    case 1:

        s = cmsAllocProfileSequenceDescription(DbgThread(), 3);
        if (s == ((void*)0)) return 0;

        memcpy(s ->seq[0].ProfileID.ID8, "0123456789ABCDEF", 16);
        memcpy(s ->seq[1].ProfileID.ID8, "1111111111111111", 16);
        memcpy(s ->seq[2].ProfileID.ID8, "2222222222222222", 16);


        SetOneStr(&s -> seq[0].Description, L"Hello, world 0", L"Hola, mundo 0");
        SetOneStr(&s -> seq[1].Description, L"Hello, world 1", L"Hola, mundo 1");
        SetOneStr(&s -> seq[2].Description, L"Hello, world 2", L"Hola, mundo 2");

        if (!cmsWriteTag(DbgThread(), hProfile, cmsSigProfileSequenceIdTag, s)) return 0;
        cmsFreeProfileSequenceDescription(DbgThread(), s);
        return 1;

    case 2:

        s = (cmsSEQ *) cmsReadTag(DbgThread(), hProfile, cmsSigProfileSequenceIdTag);
        if (s == ((void*)0)) return 0;

        if (s ->n != 3) return 0;

        if (memcmp(s ->seq[0].ProfileID.ID8, "0123456789ABCDEF", 16) != 0) return 0;
        if (memcmp(s ->seq[1].ProfileID.ID8, "1111111111111111", 16) != 0) return 0;
        if (memcmp(s ->seq[2].ProfileID.ID8, "2222222222222222", 16) != 0) return 0;

        for (i=0; i < 3; i++) {

            if (!CheckOneStr(s -> seq[i].Description, i)) return 0;
        }

        return 1;

    default:
        return 0;
    }
}
