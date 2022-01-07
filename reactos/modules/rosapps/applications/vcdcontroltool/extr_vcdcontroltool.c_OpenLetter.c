
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HANDLE ;


 int CreateFile (int *,int ,int,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int OPEN_EXISTING ;
 int wsprintf (int *,char*,int ) ;

__attribute__((used)) static
HANDLE
OpenLetter(WCHAR Letter)
{
    WCHAR Device[255];


    wsprintf(Device, L"\\\\.\\%c:", Letter);


    return CreateFile(Device, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE,
                      ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
}
