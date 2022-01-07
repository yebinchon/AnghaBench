
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 char* opj_version () ;
 int stdout ;

__attribute__((used)) static void decode_help_display(void)
{
    fprintf(stdout, "\nThis is the opj_dump utility from the OpenJPEG project.\n"
            "It dumps JPEG 2000 codestream info to stdout or a given file.\n"
            "It has been compiled against openjp2 library v%s.\n\n", opj_version());

    fprintf(stdout, "Parameters:\n");
    fprintf(stdout, "-----------\n");
    fprintf(stdout, "\n");
    fprintf(stdout, "  -ImgDir <directory>\n");
    fprintf(stdout, "	Image file Directory path \n");
    fprintf(stdout, "  -i <compressed file>\n");
    fprintf(stdout,
            "    REQUIRED only if an Input image directory not specified\n");
    fprintf(stdout,
            "    Currently accepts J2K-files, JP2-files and JPT-files. The file type\n");
    fprintf(stdout, "    is identified based on its suffix.\n");
    fprintf(stdout, "  -o <output file>\n");
    fprintf(stdout, "    OPTIONAL\n");
    fprintf(stdout, "    Output file where file info will be dump.\n");
    fprintf(stdout, "    By default it will be in the stdout.\n");
    fprintf(stdout, "  -v ");
    fprintf(stdout, "    OPTIONAL\n");
    fprintf(stdout, "    Enable informative messages\n");
    fprintf(stdout, "    By default verbose mode is off.\n");
    fprintf(stdout, "\n");
}
