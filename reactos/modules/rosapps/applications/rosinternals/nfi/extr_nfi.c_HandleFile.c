
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONGLONG ;
struct TYPE_17__ {int QuadPart; } ;
struct TYPE_24__ {TYPE_1__ FileReferenceNumber; } ;
struct TYPE_18__ {scalar_t__ Type; } ;
struct TYPE_23__ {scalar_t__ BytesInUse; scalar_t__ AttributeOffset; TYPE_2__ Ntfs; } ;
struct TYPE_22__ {scalar_t__ Type; scalar_t__ Length; } ;
struct TYPE_19__ {int QuadPart; } ;
struct TYPE_21__ {TYPE_3__ FileReferenceNumber; scalar_t__ FileRecordBuffer; } ;
struct TYPE_20__ {scalar_t__ BytesPerFileRecordSegment; } ;
typedef TYPE_4__* PNTFS_VOLUME_DATA_BUFFER ;
typedef TYPE_5__* PNTFS_FILE_RECORD_OUTPUT_BUFFER ;
typedef TYPE_6__* PNTFS_ATTR_RECORD ;
typedef int * PNAME_CACHE_ENTRY ;
typedef TYPE_7__* PFILE_RECORD_HEADER ;
typedef int NTFS_FILE_RECORD_OUTPUT_BUFFER ;
typedef TYPE_8__ NTFS_FILE_RECORD_INPUT_BUFFER ;
typedef int InputBuffer ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOLEAN ;


 scalar_t__ AttributeEnd ;
 int DeviceIoControl (int ,int ,TYPE_8__*,int,TYPE_5__*,scalar_t__,int *,int *) ;
 int FSCTL_GET_NTFS_FILE_RECORD ;
 scalar_t__ NRH_FILE_TYPE ;
 int PrintAttributeInfo (TYPE_6__*,scalar_t__) ;
 int * PrintPrettyName (int ,TYPE_4__*,TYPE_6__*,TYPE_6__*,int ,int ) ;
 int _T (char*) ;
 int _tprintf (int ,int ) ;

PNAME_CACHE_ENTRY HandleFile(HANDLE VolumeHandle, PNTFS_VOLUME_DATA_BUFFER VolumeInfo, ULONGLONG Id, PNTFS_FILE_RECORD_OUTPUT_BUFFER OutputBuffer, BOOLEAN Silent)
{
    NTFS_FILE_RECORD_INPUT_BUFFER InputBuffer;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_RECORD Attribute, AttributesEnd;
    DWORD LengthReturned;
    PNAME_CACHE_ENTRY CacheEntry;


    InputBuffer.FileReferenceNumber.QuadPart = Id;
    if (!DeviceIoControl(VolumeHandle, FSCTL_GET_NTFS_FILE_RECORD, &InputBuffer, sizeof(InputBuffer),
                         OutputBuffer, VolumeInfo->BytesPerFileRecordSegment + sizeof(NTFS_FILE_RECORD_OUTPUT_BUFFER),
                         &LengthReturned, ((void*)0)))
    {
        return ((void*)0);
    }





    if (OutputBuffer->FileReferenceNumber.QuadPart != Id)
    {
        return ((void*)0);
    }


    FileRecord = (PFILE_RECORD_HEADER)OutputBuffer->FileRecordBuffer;
    if (FileRecord->Ntfs.Type != NRH_FILE_TYPE)
    {
        return ((void*)0);
    }

    if (!Silent)
    {

        _tprintf(_T("\nFile %I64d\n"), OutputBuffer->FileReferenceNumber.QuadPart);
    }


    Attribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->AttributeOffset);
    AttributesEnd = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->BytesInUse);


    CacheEntry = PrintPrettyName(VolumeHandle, VolumeInfo, Attribute, AttributesEnd, Id, Silent);

    if (!Silent)
    {

        while (Attribute < AttributesEnd && Attribute->Type != AttributeEnd)
        {
            PrintAttributeInfo(Attribute, VolumeInfo->BytesPerFileRecordSegment);
            Attribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)Attribute + Attribute->Length);
        }
    }

    return CacheEntry;
}
