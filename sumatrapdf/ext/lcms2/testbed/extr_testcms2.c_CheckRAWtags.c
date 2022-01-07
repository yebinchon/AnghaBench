
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int cmsReadRawTag (int ,int ,int ,char*,int) ;
 int cmsWriteRawTag (int ,int ,int ,char*,int) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static
cmsInt32Number CheckRAWtags(cmsInt32Number Pass, cmsHPROFILE hProfile)
{
    char Buffer[7];

    switch (Pass) {

        case 1:
            return cmsWriteRawTag(DbgThread(), hProfile, (cmsTagSignature) 0x31323334, "data123", 7);

        case 2:
            if (!cmsReadRawTag(DbgThread(), hProfile, (cmsTagSignature) 0x31323334, Buffer, 7)) return 0;

            if (strncmp(Buffer, "data123", 7) != 0) return 0;
            return 1;

        default:
            return 0;
    }
}
