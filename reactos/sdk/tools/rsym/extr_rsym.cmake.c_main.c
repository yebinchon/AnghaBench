
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int elfhdr ;
struct TYPE_14__ {scalar_t__ e_magic; long e_lfanew; } ;
struct TYPE_13__ {int SizeOfOptionalHeader; unsigned int NumberOfSections; } ;
struct TYPE_11__ {scalar_t__ SizeOfImage; int SectionAlignment; } ;
struct TYPE_12__ {TYPE_3__ OptionalHeader; TYPE_5__ FileHeader; } ;
struct TYPE_9__ {scalar_t__ VirtualSize; } ;
struct TYPE_10__ {int Characteristics; scalar_t__ SizeOfRawData; scalar_t__ PointerToRawData; scalar_t__ VirtualAddress; TYPE_1__ Misc; } ;
typedef int PSYMBOLFILE_HEADER ;
typedef TYPE_2__* PIMAGE_SECTION_HEADER ;
typedef TYPE_3__* PIMAGE_OPTIONAL_HEADER ;
typedef TYPE_4__* PIMAGE_NT_HEADERS ;
typedef TYPE_5__* PIMAGE_FILE_HEADER ;
typedef TYPE_6__* PIMAGE_DOS_HEADER ;
typedef int FILE ;


 scalar_t__ IMAGE_DOS_MAGIC ;
 int IMAGE_SCN_CNT_INITIALIZED_DATA ;
 int IMAGE_SCN_MEM_DISCARDABLE ;
 int IMAGE_SCN_MEM_PURGEABLE ;
 scalar_t__ IsDebugSection (TYPE_2__*) ;
 scalar_t__ ROUND_UP (scalar_t__,int ) ;
 char* convert_path (char*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (void*) ;
 int fwrite (void*,int,size_t,int *) ;
 void* load_file (char*,size_t*) ;
 int memcmp (TYPE_6__*,char*,int) ;
 int perror (char*) ;
 int stderr ;

int main(int argc, char* argv[])
{
    unsigned int i;
    PSYMBOLFILE_HEADER SymbolFileHeader;
    PIMAGE_NT_HEADERS NtHeaders;
    PIMAGE_DOS_HEADER DosHeader;
    PIMAGE_FILE_HEADER FileHeader;
    PIMAGE_OPTIONAL_HEADER OptionalHeader;
    PIMAGE_SECTION_HEADER SectionHeaders, LastSection;
    char* path1;
    char* path2;
    FILE* out;
    size_t FileSize;
    void *FileData;
    char elfhdr[] = { '\377', 'E', 'L', 'F' };

    if (argc != 3)
    {
        fprintf(stderr, "Usage: rsym <exefile> <symfile>\n");
        exit(1);
    }

    path1 = convert_path(argv[1]);
    path2 = convert_path(argv[2]);


    FileData = load_file( path1, &FileSize);
    if ( !FileData )
    {
        fprintf(stderr, "An error occured loading '%s'\n", path1);
        exit(1);
    }


    DosHeader = (PIMAGE_DOS_HEADER) FileData;
    if (DosHeader->e_magic != IMAGE_DOS_MAGIC || DosHeader->e_lfanew == 0L)
    {

        if (!memcmp(DosHeader, elfhdr, sizeof(elfhdr)))
            exit(0);
        perror("Input file is not a PE image.\n");
        free(FileData);
        exit(1);
    }


    NtHeaders = (PIMAGE_NT_HEADERS)((char*)FileData + DosHeader->e_lfanew);
    FileHeader = &NtHeaders->FileHeader;
    OptionalHeader = &NtHeaders->OptionalHeader;


    SectionHeaders = (PIMAGE_SECTION_HEADER)((char*)OptionalHeader +
                                             FileHeader->SizeOfOptionalHeader);


    for (i = 0; i < FileHeader->NumberOfSections; i++)
    {

        if (IsDebugSection(&SectionHeaders[i]))
        {

            SectionHeaders[i].Characteristics |= IMAGE_SCN_CNT_INITIALIZED_DATA;
            SectionHeaders[i].Characteristics &= ~(IMAGE_SCN_MEM_PURGEABLE | IMAGE_SCN_MEM_DISCARDABLE);
        }
    }


    LastSection = &SectionHeaders[FileHeader->NumberOfSections - 1];


    LastSection->SizeOfRawData = FileSize - LastSection->PointerToRawData;


    if (LastSection->Misc.VirtualSize < LastSection->SizeOfRawData)
    {

        LastSection->Misc.VirtualSize = ROUND_UP(LastSection->SizeOfRawData,
                                                 OptionalHeader->SectionAlignment);


        OptionalHeader->SizeOfImage = LastSection->VirtualAddress +
                                      LastSection->Misc.VirtualSize;
    }


    out = fopen(path2, "wb");
    if (out == ((void*)0))
    {
        perror("Cannot open output file");
        free(FileData);
        exit(1);
    }


    fwrite(FileData, 1, FileSize, out);
    fclose(out);
    free(FileData);

    return 0;
}
