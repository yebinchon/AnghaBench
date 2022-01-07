
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
typedef scalar_t__ cmsInt32Number ;
typedef int TIFF ;
typedef int FILE ;


 int FatalError (char*,scalar_t__,char const*) ;
 int OutOfMem (scalar_t__) ;
 int TIFFSetField (int *,int ,scalar_t__,scalar_t__*) ;
 int TIFFTAG_ICCPROFILE ;
 scalar_t__ cmsfilelength (int *) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (scalar_t__*,int,size_t,int *) ;
 int free (scalar_t__*) ;
 scalar_t__ malloc (scalar_t__) ;

__attribute__((used)) static
void DoEmbedProfile(TIFF* Out, const char* ProfileFile)
{
    FILE* f;
    cmsInt32Number size;
    cmsUInt32Number EmbedLen;
    cmsUInt8Number* EmbedBuffer;

    f = fopen(ProfileFile, "rb");
    if (f == ((void*)0)) return;

    size = cmsfilelength(f);
    if (size < 0) return;

    EmbedBuffer = (cmsUInt8Number*) malloc(size + 1);
    if (EmbedBuffer == ((void*)0)) {
        OutOfMem(size+1);
        return;
    }

    EmbedLen = (cmsUInt32Number) fread(EmbedBuffer, 1, (size_t) size, f);

    if (EmbedLen != size)
        FatalError("Cannot read %ld bytes to %s", size, ProfileFile);

    fclose(f);
    EmbedBuffer[EmbedLen] = 0;

    TIFFSetField(Out, TIFFTAG_ICCPROFILE, EmbedLen, EmbedBuffer);
    free(EmbedBuffer);
}
