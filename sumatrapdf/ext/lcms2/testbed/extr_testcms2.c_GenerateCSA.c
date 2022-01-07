
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
 int cmsGetPostScriptCSA (int ,int ,int ,int ,char*,int) ;
 int cmsOpenProfileFromFile (int ,char const*,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (char*,int,int,int *) ;
 int remove (char const*) ;

__attribute__((used)) static
void GenerateCSA(const char* cInProf, const char* FileName)
{
    cmsHPROFILE hProfile;
    cmsUInt32Number n;
    char* Buffer;
    cmsContext BuffThread = DbgThread();
    FILE* o;


    if (cInProf == ((void*)0))
        hProfile = cmsCreateLab4Profile(DbgThread(), ((void*)0));
    else
        hProfile = cmsOpenProfileFromFile(DbgThread(), cInProf, "r");

    n = cmsGetPostScriptCSA(DbgThread(), hProfile, 0, 0, ((void*)0), 0);
    if (n == 0) return;

    Buffer = (char*) _cmsMalloc(BuffThread, n + 1);
    cmsGetPostScriptCSA(DbgThread(), hProfile, 0, 0, Buffer, n);
    Buffer[n] = 0;

    if (FileName != ((void*)0)) {
        o = fopen(FileName, "wb");
        fwrite(Buffer, n, 1, o);
        fclose(o);
    }

    _cmsFree(BuffThread, Buffer);
    cmsCloseProfile(DbgThread(), hProfile);
    if (FileName != ((void*)0))
        remove(FileName);
}
