
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {int idx; int p; TYPE_2__* psh; } ;
struct TYPE_13__ {int FilePtr; int HeaderSize; int Symbols; char* Strings; int AllSections; int UsedSections; int* UseSection; int NewSectionHeaderSize; TYPE_1__ eh_frame; TYPE_2__* NewSectionHeaders; TYPE_2__* SectionHeaders; TYPE_3__* OptionalHeader; TYPE_4__* FileHeader; int ImageBase; TYPE_5__* DosHeader; scalar_t__ cbInFileSize; } ;
struct TYPE_12__ {scalar_t__ e_magic; long e_lfanew; } ;
struct TYPE_11__ {scalar_t__ Machine; int SizeOfOptionalHeader; int PointerToSymbolTable; int NumberOfSymbols; int NumberOfSections; } ;
struct TYPE_10__ {int CheckSum; int FileAlignment; int ImageBase; } ;
struct TYPE_9__ {int PointerToRawData; int SizeOfRawData; int Characteristics; scalar_t__ Name; } ;
typedef TYPE_2__* PIMAGE_SECTION_HEADER ;
typedef TYPE_3__* PIMAGE_OPTIONAL_HEADER64 ;
typedef TYPE_4__* PIMAGE_FILE_HEADER ;
typedef TYPE_5__* PIMAGE_DOS_HEADER ;
typedef TYPE_6__* PFILE_INFO ;
typedef int IMAGE_SECTION_HEADER ;
typedef int IMAGE_FILE_HEADER ;
typedef int DWORD ;


 int CalculateChecksum (int ,int,scalar_t__) ;
 scalar_t__ IMAGE_DOS_MAGIC ;
 scalar_t__ IMAGE_FILE_MACHINE_AMD64 ;
 int ROUND_UP (int,int) ;
 int fprintf (int ,char*,...) ;
 void* malloc (int) ;
 int perror (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 unsigned long strtoul (char*,int ,int) ;

int
ParsePEHeaders(PFILE_INFO File)
{
    DWORD OldChecksum, Checksum;
    ULONG Alignment, CurrentPos;
    int i, j;


    File->DosHeader = (PIMAGE_DOS_HEADER)File->FilePtr;
    if ((File->DosHeader->e_magic != IMAGE_DOS_MAGIC) ||
        (File->DosHeader->e_lfanew == 0L))
    {
        perror("Input file is not a PE image.\n");
        return -1;
    }


    File->FileHeader = (PIMAGE_FILE_HEADER)(File->FilePtr +
                               File->DosHeader->e_lfanew + sizeof(ULONG));


    if (File->FileHeader->Machine != IMAGE_FILE_MACHINE_AMD64)
    {
        perror("Input file is not an x64 image.\n");
        return -1;
    }


    File->OptionalHeader = (PIMAGE_OPTIONAL_HEADER64)(File->FileHeader + 1);


    OldChecksum = File->OptionalHeader->CheckSum;
    File->OptionalHeader->CheckSum = 0;
    Checksum = CalculateChecksum(0, File->FilePtr, File->cbInFileSize);
    Checksum += File->cbInFileSize;
    if ((Checksum & 0xffff) != (OldChecksum & 0xffff))
    {
        fprintf(stderr, "Input file has incorrect PE checksum: 0x%lx (calculated: 0x%lx)\n",
            OldChecksum, Checksum);

    }


    File->SectionHeaders = (PIMAGE_SECTION_HEADER)((char*)File->OptionalHeader
                           + File->FileHeader->SizeOfOptionalHeader);

    File->HeaderSize = File->DosHeader->e_lfanew
                       + sizeof(ULONG)
                       + sizeof(IMAGE_FILE_HEADER)
                       + File->FileHeader->SizeOfOptionalHeader;

    if (!File->FileHeader->PointerToSymbolTable)
    {
        fprintf(stderr, "No symbol table.\n");
        return -1;
    }


    File->ImageBase = File->OptionalHeader->ImageBase;
    File->Symbols = File->FilePtr + File->FileHeader->PointerToSymbolTable;
    File->Strings = (char*)File->Symbols + File->FileHeader->NumberOfSymbols * 18;


    File->AllSections = File->FileHeader->NumberOfSections;
    Alignment = File->OptionalHeader->FileAlignment;
    File->NewSectionHeaders = malloc((File->AllSections+2) * sizeof(IMAGE_SECTION_HEADER));
    File->UsedSections = 0;
    File->eh_frame.idx = -1;


    File->UseSection = malloc(File->AllSections);

    for (i = 0; i < File->AllSections; i++)
    {
        char *pName = (char*)File->SectionHeaders[i].Name;
        File->UseSection[i] = 1;


        if (pName[0] == '/')
        {
            unsigned long index = strtoul(pName+1, 0, 10);
            pName = File->Strings + index;


            File->UseSection[i] = 0;
        }


        if (strcmp(pName, ".eh_frame") == 0)
        {
            File->eh_frame.psh = &File->SectionHeaders[i];
            File->eh_frame.idx = i;
            File->eh_frame.p = File->FilePtr + File->eh_frame.psh->PointerToRawData;
        }


        if (File->UseSection[i])
            File->UsedSections = i+1;

    }


    File->NewSectionHeaderSize =
        (File->UsedSections+2) * sizeof(IMAGE_SECTION_HEADER);


    CurrentPos = File->HeaderSize + File->NewSectionHeaderSize;
    CurrentPos = ROUND_UP(CurrentPos, Alignment);


    for (i = 0, j = 0; i < File->UsedSections; i++)
    {

        File->NewSectionHeaders[j] = File->SectionHeaders[i];


        if (File->UseSection[i] == 0)
        {

            File->NewSectionHeaders[j].PointerToRawData = 0;
            File->NewSectionHeaders[j].SizeOfRawData = 0;
            File->NewSectionHeaders[j].Characteristics = 0xC0500080;
        }


        File->NewSectionHeaders[j].PointerToRawData =
              File->NewSectionHeaders[j].PointerToRawData ? CurrentPos : 0;
        CurrentPos += File->NewSectionHeaders[j].SizeOfRawData;
        j++;
    }

    if (File->eh_frame.idx == -1)
    {

        return 0;
    }

    return 1;
}
