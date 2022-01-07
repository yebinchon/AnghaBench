
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int TRUE ;

__attribute__((used)) static BOOL application_octet_stream_filter(const BYTE *b, DWORD size)
{
    return TRUE;
}
