
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef int FILE ;


 int DbgThread () ;
 int _cmsFree (int ,char*) ;
 scalar_t__ _cmsMalloc (int ,int) ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int cmsGetPostScriptCRD (int ,int ,int ,int,char*,int) ;
 int cmsOpenProfileFromFile (int ,char const*,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (char*,int,int,int *) ;
 int remove (char const*) ;

__attribute__((used)) static
void GenerateCRD(const char* cOutProf, const char* FileName)
{
    cmsHPROFILE hProfile;
    cmsUInt32Number n;
    char* Buffer;
    cmsUInt32Number dwFlags = 0;
    cmsContext BuffThread = DbgThread();


    if (cOutProf == ((void*)0))
        hProfile = cmsCreateLab4Profile(DbgThread(), ((void*)0));
    else
        hProfile = cmsOpenProfileFromFile(DbgThread(), cOutProf, "r");

    n = cmsGetPostScriptCRD(DbgThread(), hProfile, 0, dwFlags, ((void*)0), 0);
    if (n == 0) return;

    Buffer = (char*) _cmsMalloc(BuffThread, n + 1);
    cmsGetPostScriptCRD(DbgThread(), hProfile, 0, dwFlags, Buffer, n);
    Buffer[n] = 0;

    if (FileName != ((void*)0)) {
        FILE* o = fopen(FileName, "wb");
        fwrite(Buffer, n, 1, o);
        fclose(o);
    }

    _cmsFree(BuffThread, Buffer);
    cmsCloseProfile(DbgThread(), hProfile);
    if (FileName != ((void*)0))
        remove(FileName);
}
