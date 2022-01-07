
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
typedef int UNICODE_STRING ;
struct TYPE_8__ {int LargePageMinimum; } ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_7__ {TYPE_1__ EndOfFile; } ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int * HANDLE ;
typedef TYPE_2__ FILE_STANDARD_INFORMATION ;


 int CREATE_SECTION (int *,int,int *,TYPE_1__,int,int,int *,int ,int ) ;
 int FileStandardInformation ;
 int IGNORE ;
 int InitializeObjectAttributes (int *,int *,int,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int OBJ_KERNEL_HANDLE ;
 int PAGE_EXECUTE_READ ;
 int PAGE_EXECUTE_READWRITE ;
 int PAGE_EXECUTE_WRITECOPY ;
 int PAGE_READONLY ;
 int PAGE_READWRITE ;
 int PAGE_WRITECOPY ;
 int RTL_CONSTANT_STRING (char*) ;
 int SECTION_ALL_ACCESS ;
 int SECTION_MAP_EXECUTE ;
 int SECTION_MAP_READ ;
 int SECTION_MAP_WRITE ;
 int SEC_COMMIT ;
 int SEC_IMAGE ;
 int SEC_LARGE_PAGES ;
 int SEC_NOCACHE ;
 int SEC_RESERVE ;
 int STATUS_INVALID_FILE_FOR_SECTION ;
 int STATUS_INVALID_IMAGE_NOT_MZ ;
 int STATUS_INVALID_PAGE_PROTECTION ;
 int STATUS_INVALID_PARAMETER_4 ;
 int STATUS_INVALID_PARAMETER_6 ;
 int STATUS_OBJECT_PATH_SYNTAX_BAD ;
 int STATUS_SECTION_TOO_BIG ;
 int STATUS_SUCCESS ;
 TYPE_4__* SharedUserData ;
 int TestStringSize ;
 int ZwQueryInformationFile (int *,int *,TYPE_2__*,int,int ) ;
 int _4mb ;
 int skip (int,char*) ;

__attribute__((used)) static
VOID
SimpleErrorChecks(HANDLE FileHandleReadOnly, HANDLE FileHandleWriteOnly, HANDLE FileHandleExecuteOnly)
{
    NTSTATUS Status;
    HANDLE Section = ((void*)0);
    OBJECT_ATTRIBUTES ObjectAttributesReadOnly;
    OBJECT_ATTRIBUTES ObjectAttributesWriteOnly;
    OBJECT_ATTRIBUTES InvalidObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    FILE_STANDARD_INFORMATION FileStandardInfo;
    LARGE_INTEGER MaximumSize;
    UNICODE_STRING SectReadOnly = RTL_CONSTANT_STRING(L"\\BaseNamedObjects\\KmtTestReadSect");
    UNICODE_STRING SectWriteOnly = RTL_CONSTANT_STRING(L"\\BaseNamedObjects\\KmtTestWriteSect");
    UNICODE_STRING InvalidObjectString = RTL_CONSTANT_STRING(L"THIS/IS/INVALID");

    MaximumSize.QuadPart = TestStringSize;

    InitializeObjectAttributes(&ObjectAttributesReadOnly, &SectReadOnly, OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE, ((void*)0), ((void*)0));
    InitializeObjectAttributes(&ObjectAttributesWriteOnly, &SectWriteOnly, OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE, ((void*)0), ((void*)0));
    InitializeObjectAttributes(&InvalidObjectAttributes, &InvalidObjectString, OBJ_CASE_INSENSITIVE | OBJ_KERNEL_HANDLE, ((void*)0), ((void*)0));




    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_COMMIT, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, 0, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_COMMIT, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, -1, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_COMMIT, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);


    CREATE_SECTION(Section, SECTION_ALL_ACCESS, &ObjectAttributesReadOnly, MaximumSize, PAGE_READWRITE, SEC_COMMIT, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, &InvalidObjectAttributes, MaximumSize, PAGE_READWRITE, SEC_COMMIT, ((void*)0), STATUS_OBJECT_PATH_SYNTAX_BAD, STATUS_SUCCESS);


    MaximumSize.QuadPart = -1;
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_COMMIT, ((void*)0), STATUS_SECTION_TOO_BIG, IGNORE);

    MaximumSize.QuadPart = 0;
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_COMMIT, ((void*)0), STATUS_INVALID_PARAMETER_4, IGNORE);


    if (!skip(SharedUserData->LargePageMinimum > 0, "LargePageMinimum is 0\n"))
    {
        MaximumSize.QuadPart = (_4mb / SharedUserData->LargePageMinimum) * SharedUserData->LargePageMinimum;
        CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_LARGE_PAGES | SEC_COMMIT), ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    }

    MaximumSize.QuadPart = TestStringSize;


    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READ, SEC_COMMIT, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READWRITE, SEC_COMMIT, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_WRITECOPY, SEC_COMMIT, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READONLY, SEC_COMMIT, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, (PAGE_EXECUTE_READ | PAGE_READWRITE), SEC_COMMIT, ((void*)0), STATUS_INVALID_PAGE_PROTECTION, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, (PAGE_READONLY | PAGE_READWRITE), SEC_COMMIT, ((void*)0), STATUS_INVALID_PAGE_PROTECTION, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, (PAGE_WRITECOPY | PAGE_READONLY), SEC_COMMIT, ((void*)0), STATUS_INVALID_PAGE_PROTECTION, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, 0, SEC_COMMIT, ((void*)0), STATUS_INVALID_PAGE_PROTECTION, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, -1, SEC_COMMIT, ((void*)0), STATUS_INVALID_PAGE_PROTECTION, STATUS_SUCCESS);


    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, 0, ((void*)0), STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_COMMIT | SEC_RESERVE), ((void*)0), STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_RESERVE, ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_IMAGE, ((void*)0), STATUS_INVALID_FILE_FOR_SECTION, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_IMAGE | SEC_COMMIT), ((void*)0), STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, -1, ((void*)0), STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_LARGE_PAGES, ((void*)0), STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_LARGE_PAGES | SEC_COMMIT), ((void*)0), STATUS_INVALID_PARAMETER_4, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_NOCACHE, ((void*)0), STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_NOCACHE | SEC_RESERVE | SEC_COMMIT), ((void*)0), STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_NOCACHE | SEC_COMMIT), ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_NOCACHE | SEC_RESERVE), ((void*)0), STATUS_SUCCESS, STATUS_SUCCESS);





    CREATE_SECTION(Section, SECTION_ALL_ACCESS, &ObjectAttributesReadOnly, MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleReadOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, &ObjectAttributesWriteOnly, MaximumSize, PAGE_WRITECOPY, SEC_COMMIT, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_MAP_WRITE, &ObjectAttributesReadOnly, MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleReadOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_MAP_READ, &ObjectAttributesWriteOnly, MaximumSize, PAGE_WRITECOPY, SEC_COMMIT, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);


    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleReadOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, &InvalidObjectAttributes, MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleReadOnly, STATUS_OBJECT_PATH_SYNTAX_BAD, IGNORE);


    MaximumSize.QuadPart = TestStringSize - 100;
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);

    MaximumSize.QuadPart = -1;
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleWriteOnly, STATUS_SECTION_TOO_BIG, IGNORE);

    MaximumSize.QuadPart = TestStringSize + 1;
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleWriteOnly, STATUS_SECTION_TOO_BIG, IGNORE);

    MaximumSize.QuadPart = 0;
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);


    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READ, SEC_COMMIT, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READWRITE, SEC_COMMIT, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_WRITECOPY, SEC_COMMIT, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, (PAGE_EXECUTE_READ | PAGE_READWRITE), SEC_COMMIT, FileHandleWriteOnly, STATUS_INVALID_PAGE_PROTECTION, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, (PAGE_READONLY | PAGE_READWRITE), SEC_COMMIT, FileHandleWriteOnly, STATUS_INVALID_PAGE_PROTECTION, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, (PAGE_WRITECOPY | PAGE_READONLY), SEC_COMMIT, FileHandleWriteOnly, STATUS_INVALID_PAGE_PROTECTION, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, 0, SEC_COMMIT, FileHandleWriteOnly, STATUS_INVALID_PAGE_PROTECTION, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, -1, SEC_COMMIT, FileHandleWriteOnly, STATUS_INVALID_PAGE_PROTECTION, STATUS_SUCCESS);


    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, 0, FileHandleWriteOnly, STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_COMMIT | SEC_RESERVE), FileHandleWriteOnly, STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_RESERVE, FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_IMAGE | SEC_COMMIT), FileHandleWriteOnly, STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, -1, FileHandleWriteOnly, STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_LARGE_PAGES, FileHandleWriteOnly, STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_LARGE_PAGES | SEC_COMMIT), FileHandleWriteOnly, STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_NOCACHE, FileHandleWriteOnly, STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_NOCACHE | SEC_RESERVE | SEC_COMMIT), FileHandleWriteOnly, STATUS_INVALID_PARAMETER_6, IGNORE);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_NOCACHE | SEC_COMMIT), FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, (SEC_NOCACHE | SEC_RESERVE), FileHandleWriteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READWRITE, SEC_IMAGE, FileHandleWriteOnly, STATUS_INVALID_IMAGE_NOT_MZ, IGNORE);



    CREATE_SECTION(Section, SECTION_MAP_READ, &ObjectAttributesWriteOnly, MaximumSize, PAGE_WRITECOPY, SEC_IMAGE, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_MAP_EXECUTE, &ObjectAttributesWriteOnly, MaximumSize, PAGE_WRITECOPY, SEC_IMAGE, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);


    CREATE_SECTION(Section, SECTION_ALL_ACCESS, &ObjectAttributesReadOnly, MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, &ObjectAttributesWriteOnly, MaximumSize, PAGE_WRITECOPY, SEC_COMMIT, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_MAP_WRITE, &ObjectAttributesReadOnly, MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_MAP_READ, &ObjectAttributesWriteOnly, MaximumSize, PAGE_WRITECOPY, SEC_COMMIT, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);


    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, &InvalidObjectAttributes, MaximumSize, PAGE_READONLY, SEC_COMMIT, FileHandleExecuteOnly, STATUS_OBJECT_PATH_SYNTAX_BAD, IGNORE);


    Status = ZwQueryInformationFile(FileHandleExecuteOnly, &IoStatusBlock, &FileStandardInfo, sizeof(FILE_STANDARD_INFORMATION), FileStandardInformation);
    if (!skip(NT_SUCCESS(Status), "Cannot query file information\n"))
    {

        MaximumSize = FileStandardInfo.EndOfFile;
        CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READ, SEC_IMAGE, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);


        MaximumSize.QuadPart = FileStandardInfo.EndOfFile.QuadPart - 2;
        CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READ, SEC_IMAGE, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);


        MaximumSize.QuadPart = FileStandardInfo.EndOfFile.QuadPart + 2;
        CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READ, SEC_IMAGE, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);


        MaximumSize.QuadPart = 0;
        CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READ, SEC_IMAGE, FileHandleExecuteOnly, STATUS_SUCCESS, STATUS_SUCCESS);


        MaximumSize.QuadPart = -1;
        CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), MaximumSize, PAGE_EXECUTE_READ, SEC_IMAGE, FileHandleExecuteOnly, STATUS_SECTION_TOO_BIG, IGNORE);
    }
}
