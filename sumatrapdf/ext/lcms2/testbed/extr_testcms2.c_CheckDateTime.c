
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; int tm_min; int tm_sec; int tm_mday; int tm_mon; int tm_year; } ;
typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,struct tm*) ;

__attribute__((used)) static
cmsInt32Number CheckDateTime(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    struct tm *Pt, Holder;

    switch (Pass) {

        case 1:

            Holder.tm_hour = 1;
            Holder.tm_min = 2;
            Holder.tm_sec = 3;
            Holder.tm_mday = 4;
            Holder.tm_mon = 5;
            Holder.tm_year = 2009 - 1900;
            return cmsWriteTag(DbgThread(), hProfile, tag, &Holder);

        case 2:
            Pt = (struct tm *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;

            return (Pt ->tm_hour == 1 &&
                Pt ->tm_min == 2 &&
                Pt ->tm_sec == 3 &&
                Pt ->tm_mday == 4 &&
                Pt ->tm_mon == 5 &&
                Pt ->tm_year == 2009 - 1900);

        default:
            return 0;
    }

}
