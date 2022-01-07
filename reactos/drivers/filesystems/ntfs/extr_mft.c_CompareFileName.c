
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_15__ {int Length; int MaximumLength; int Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
struct TYPE_14__ {int NameLength; int Name; } ;
struct TYPE_16__ {TYPE_1__ FileName; } ;
typedef TYPE_2__* PUNICODE_STRING ;
typedef TYPE_4__* PINDEX_ENTRY_ATTRIBUTE ;
typedef int BOOLEAN ;


 int FALSE ;
 int FsRtlIsNameInExpression (TYPE_2__*,TYPE_2__*,int,int *) ;
 int NT_SUCCESS (int ) ;
 int NT_VERIFY (int ) ;
 scalar_t__ RtlCompareUnicodeString (TYPE_2__*,TYPE_2__*,int) ;
 int RtlFreeUnicodeString (TYPE_2__*) ;
 int RtlUpcaseUnicodeString (TYPE_2__*,TYPE_2__*,int) ;
 int TRUE ;

BOOLEAN
CompareFileName(PUNICODE_STRING FileName,
                PINDEX_ENTRY_ATTRIBUTE IndexEntry,
                BOOLEAN DirSearch,
                BOOLEAN CaseSensitive)
{
    BOOLEAN Ret, Alloc = FALSE;
    UNICODE_STRING EntryName;

    EntryName.Buffer = IndexEntry->FileName.Name;
    EntryName.Length =
    EntryName.MaximumLength = IndexEntry->FileName.NameLength * sizeof(WCHAR);

    if (DirSearch)
    {
        UNICODE_STRING IntFileName;
        if (!CaseSensitive)
        {
            NT_VERIFY(NT_SUCCESS(RtlUpcaseUnicodeString(&IntFileName, FileName, TRUE)));
            Alloc = TRUE;
        }
        else
        {
            IntFileName = *FileName;
        }

        Ret = FsRtlIsNameInExpression(&IntFileName, &EntryName, !CaseSensitive, ((void*)0));

        if (Alloc)
        {
            RtlFreeUnicodeString(&IntFileName);
        }

        return Ret;
    }
    else
    {
        return (RtlCompareUnicodeString(FileName, &EntryName, !CaseSensitive) == 0);
    }
}
