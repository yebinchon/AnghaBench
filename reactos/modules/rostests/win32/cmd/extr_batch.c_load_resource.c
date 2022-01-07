
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HRSRC ;
typedef int DWORD ;


 int * FindResourceA (int *,char const*,char const*) ;
 int GetLastError () ;
 char* LoadResource (int *,int *) ;
 int SizeofResource (int *,int *) ;
 int ok (int ,char*,char const*,int ) ;

__attribute__((used)) static DWORD load_resource(const char *name, const char *type, const char **ret)
{
    const char *res;
    HRSRC src;
    DWORD size;

    src = FindResourceA(((void*)0), name, type);
    ok(src != ((void*)0), "Could not find resource %s: %u\n", name, GetLastError());
    if(!src)
        return 0;

    res = LoadResource(((void*)0), src);
    size = SizeofResource(((void*)0), src);
    while(size && !res[size-1])
        size--;

    *ret = res;
    return size;
}
