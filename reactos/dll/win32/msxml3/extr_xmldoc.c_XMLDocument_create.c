
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int MESSAGE (char*) ;

HRESULT XMLDocument_create(LPVOID *ppObj)
{
    MESSAGE("This program tried to use an XMLDocument object, but\n"
            "libxml2 support was not present at compile time.\n");
    return E_NOTIMPL;
}
