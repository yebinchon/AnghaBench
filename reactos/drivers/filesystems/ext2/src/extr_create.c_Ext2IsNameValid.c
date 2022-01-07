
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_3__ {int Length; int Buffer; } ;
typedef int* PUSHORT ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN
Ext2IsNameValid(PUNICODE_STRING FileName)
{
    USHORT i = 0;
    PUSHORT pName = (PUSHORT) FileName->Buffer;

    if (FileName == ((void*)0)) {
        return FALSE;
    }

    while (i < (FileName->Length / sizeof(WCHAR))) {

        if (pName[i] == 0) {
            break;
        }

        if (pName[i] == L'|' || pName[i] == L':' ||
                pName[i] == L'/' || pName[i] == L'*' ||
                pName[i] == L'?' || pName[i] == L'\"' ||
                pName[i] == L'<' || pName[i] == L'>' ) {

            return FALSE;
        }

        i++;
    }

    return TRUE;
}
