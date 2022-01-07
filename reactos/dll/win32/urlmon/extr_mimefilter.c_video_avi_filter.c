
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef char BYTE ;
typedef int BOOL ;



__attribute__((used)) static BOOL video_avi_filter(const BYTE *b, DWORD size)
{
    return size > 12
        && b[0] == 'R' && b[1] == 'I' && b[2] == 'F' && b[3] == 'F'
        && b[8] == 'A' && b[9] == 'V' && b[10] == 'I' && b[11] == 0x20;
}
