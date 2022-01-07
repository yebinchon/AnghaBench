
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt8Number ;
typedef int FILE ;


 int Compressor ;
 size_t cmsfilelength (int *) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (scalar_t__*,int,size_t,int *) ;
 int free (scalar_t__*) ;
 scalar_t__ malloc (size_t) ;
 int write_icc_profile (int *,scalar_t__*,unsigned int) ;

__attribute__((used)) static
void DoEmbedProfile(const char* ProfileFile)
{
    FILE* f;
    size_t size, EmbedLen;
    cmsUInt8Number* EmbedBuffer;

        f = fopen(ProfileFile, "rb");
        if (f == ((void*)0)) return;

        size = cmsfilelength(f);
        EmbedBuffer = (cmsUInt8Number*) malloc(size + 1);
        EmbedLen = fread(EmbedBuffer, 1, size, f);
        fclose(f);
        EmbedBuffer[EmbedLen] = 0;

        write_icc_profile (&Compressor, EmbedBuffer, (unsigned int) EmbedLen);
        free(EmbedBuffer);
}
