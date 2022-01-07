
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int off_t ;
typedef int ULONG ;
struct TYPE_5__ {scalar_t__ e_magic; long e_lfanew; scalar_t__ Magic; size_t ImageBase; } ;
typedef TYPE_1__ IMAGE_OPTIONAL_HEADER ;
typedef TYPE_1__ IMAGE_FILE_HEADER ;
typedef TYPE_1__ IMAGE_DOS_HEADER ;
typedef int FILE ;


 scalar_t__ IMAGE_DOS_MAGIC ;
 scalar_t__ IMAGE_NT_OPTIONAL_HDR32_MAGIC ;
 scalar_t__ IMAGE_NT_OPTIONAL_HDR64_MAGIC ;
 size_t INVALID_BASE ;
 int SEEK_SET ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (TYPE_1__*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int l2l_dbg (int,char*,char*,...) ;
 int strerror (int ) ;

int
get_ImageBase(char *fname, size_t *ImageBase)
{
    IMAGE_DOS_HEADER PEDosHeader;
    IMAGE_FILE_HEADER PEFileHeader;
    IMAGE_OPTIONAL_HEADER PEOptHeader;

    FILE *fr;
    off_t readLen;
    int res;

    *ImageBase = INVALID_BASE;
    fr = fopen(fname, "rb");
    if (!fr)
    {
        l2l_dbg(3, "get_ImageBase, cannot open '%s' (%s)\n", fname, strerror(errno));
        return 1;
    }

    readLen = fread(&PEDosHeader, sizeof(IMAGE_DOS_HEADER), 1, fr);
    if (1 != readLen)
    {
        l2l_dbg(1, "get_ImageBase %s, read error IMAGE_DOS_HEADER (%s)\n", fname, strerror(errno));
        fclose(fr);
        return 2;
    }


    if (PEDosHeader.e_magic != IMAGE_DOS_MAGIC || PEDosHeader.e_lfanew == 0L)
    {
        l2l_dbg(2, "get_ImageBase %s, MZ header missing\n", fname);
        fclose(fr);
        return 3;
    }


    res = fseek(fr, PEDosHeader.e_lfanew + sizeof(ULONG), SEEK_SET);
    readLen = fread(&PEFileHeader, sizeof(IMAGE_FILE_HEADER), 1, fr);
    if (1 != readLen)
    {
        l2l_dbg(1, "get_ImageBase %s, read error IMAGE_FILE_HEADER (%s)\n", fname, strerror(errno));
        fclose(fr);
        return 4;
    }


    readLen = fread(&PEOptHeader, sizeof(IMAGE_OPTIONAL_HEADER), 1, fr);
    if (1 != readLen)
    {
        l2l_dbg(1, "get_ImageBase %s, read error IMAGE_OPTIONAL_HEADER (%s)\n", fname, strerror(errno));
        fclose(fr);
        return 5;
    }


    if (PEOptHeader.Magic != IMAGE_NT_OPTIONAL_HDR32_MAGIC &&
        PEOptHeader.Magic != IMAGE_NT_OPTIONAL_HDR64_MAGIC)
    {
        l2l_dbg(2, "get_ImageBase %s, not an IMAGE_NT_OPTIONAL_HDR 32/64 bit\n", fname);
        fclose(fr);
        return 6;
    }

    *ImageBase = PEOptHeader.ImageBase;
    fclose(fr);
    return 0;
}
