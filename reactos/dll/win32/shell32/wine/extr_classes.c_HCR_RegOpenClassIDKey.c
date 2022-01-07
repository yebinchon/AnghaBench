
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Data1; int Data2; int Data3; int* Data4; } ;
typedef TYPE_1__* REFIID ;
typedef int HKEY ;
typedef int BOOL ;


 int HKEY_CLASSES_ROOT ;
 int KEY_READ ;
 int RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 int TRACE (char*,char*) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int,int,int,int) ;

BOOL HCR_RegOpenClassIDKey(REFIID riid, HKEY *hkey)
{
 char xriid[50];
    sprintf( xriid, "CLSID\\{%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}",
                 riid->Data1, riid->Data2, riid->Data3,
                 riid->Data4[0], riid->Data4[1], riid->Data4[2], riid->Data4[3],
                 riid->Data4[4], riid->Data4[5], riid->Data4[6], riid->Data4[7] );

  TRACE("%s\n",xriid );

 return !RegOpenKeyExA(HKEY_CLASSES_ROOT, xriid, 0, KEY_READ, hkey);
}
