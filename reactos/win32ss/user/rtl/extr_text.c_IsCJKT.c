
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

inline BOOL IsCJKT(WCHAR wch)
{
    if (0x0E00 <= wch && wch <= 0x0E7F)
        return TRUE;

    if (0x3000 <= wch && wch <= 0x9FFF)
        return TRUE;

    if (0xAC00 <= wch && wch <= 0xD7FF)
        return TRUE;

    if (0xFF00 <= wch && wch <= 0xFFEF)
        return TRUE;

    return FALSE;
}
