
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef char BYTE ;
typedef int BOOL ;



__attribute__((used)) static BOOL application_xmsdownload(const BYTE *b, DWORD size)
{
    return size > 2 && b[0] == 'M' && b[1] == 'Z';
}
