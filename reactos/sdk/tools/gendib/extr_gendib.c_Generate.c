
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PROPINFO ;
typedef int FILE ;


 int CreateBitBlt (int *,unsigned int) ;
 int CreatePrimitive (int *,unsigned int,int *) ;
 int CreateShiftTables (int *) ;
 int CreateTable (int *,unsigned int) ;
 int * FindRopInfo (unsigned int) ;
 int MARK (int *) ;
 int Output (int *,char*) ;
 unsigned int ROPCODE_GENERIC ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int perror (char*) ;
 int sprintf (char*,char*,unsigned int) ;
 int stderr ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
Generate(char *OutputDir, unsigned Bpp)
{
    FILE *Out;
    unsigned RopCode;
    PROPINFO RopInfo;
    char *FileName;

    FileName = malloc(strlen(OutputDir) + 12);
    if (((void*)0) == FileName)
    {
        fprintf(stderr, "Out of memory\n");
        exit(1);
    }
    strcpy(FileName, OutputDir);
    if ('/' != FileName[strlen(FileName) - 1])
    {
        strcat(FileName, "/");
    }
    sprintf(FileName + strlen(FileName), "dib%ugen.c", Bpp);

    Out = fopen(FileName, "w");
    free(FileName);
    if (((void*)0) == Out)
    {
        perror("Error opening output file");
        exit(1);
    }

    MARK(Out);
    Output(Out, "/* This is a generated file. Please do not edit */\n");
    Output(Out, "\n");
    Output(Out, "#include <win32k.h>\n");
    CreateShiftTables(Out);

    RopInfo = FindRopInfo(ROPCODE_GENERIC);
    CreatePrimitive(Out, Bpp, RopInfo);
    for (RopCode = 0; RopCode < 256; RopCode++)
    {
        RopInfo = FindRopInfo(RopCode);
        if (((void*)0) != RopInfo)
        {
            CreatePrimitive(Out, Bpp, RopInfo);
        }
    }
    CreateTable(Out, Bpp);
    CreateBitBlt(Out, Bpp);

    fclose(Out);
}
