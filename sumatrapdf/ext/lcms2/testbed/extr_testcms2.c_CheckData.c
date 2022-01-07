
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
struct TYPE_4__ {char member_0; } ;
struct TYPE_5__ {int member_0; char* data; int len; int flag; TYPE_1__ member_2; int member_1; } ;
typedef TYPE_2__ cmsICCData ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static
cmsInt32Number CheckData(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsICCData *Pt;
    cmsICCData d = { 1, 0, { '?' }};
    cmsInt32Number rc;


    switch (Pass) {

        case 1:
            rc = cmsWriteTag(DbgThread(), hProfile, tag, &d);
            return rc;

        case 2:
            Pt = (cmsICCData *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;
            return (Pt ->data[0] == '?') && (Pt ->flag == 0) && (Pt ->len == 1);

        default:
            return 0;
    }
}
