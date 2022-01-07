
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ HINSTANCE ;


 int LOAD_LIBRARY_AS_DATAFILE ;
 scalar_t__ LoadLibraryExW (char const*,int *,int ) ;
 scalar_t__ shdoclc ;

HINSTANCE get_shdoclc(void)
{
    static const WCHAR wszShdoclc[] =
        {'s','h','d','o','c','l','c','.','d','l','l',0};

    if(shdoclc)
        return shdoclc;

    return shdoclc = LoadLibraryExW(wszShdoclc, ((void*)0), LOAD_LIBRARY_AS_DATAFILE);
}
