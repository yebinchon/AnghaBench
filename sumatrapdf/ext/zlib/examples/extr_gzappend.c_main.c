
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_stream ;


 int Z_DEFAULT_COMPRESSION ;
 int bye (char*,char*) ;
 int gzscan (int ,int *,int) ;
 int gztack (char*,int,int *,int) ;
 int printf (char*) ;

int main(int argc, char **argv)
{
    int gd, level;
    z_stream strm;


    argc--; argv++;


    if (*argv == ((void*)0)) {
        printf(
            "gzappend 1.2 (11 Oct 2012) Copyright (C) 2003, 2012 Mark Adler\n"
               );
        printf(
            "usage: gzappend [-level] file.gz [ addthis [ andthis ... ]]\n");
        return 0;
    }


    level = Z_DEFAULT_COMPRESSION;
    if (argv[0][0] == '-') {
        if (argv[0][1] < '0' || argv[0][1] > '9' || argv[0][2] != 0)
            bye("invalid compression level", "");
        level = argv[0][1] - '0';
        if (*++argv == ((void*)0)) bye("no gzip file name after options", "");
    }


    gd = gzscan(*argv++, &strm, level);


    if (*argv == ((void*)0))
        gztack(((void*)0), gd, &strm, 1);
    else
        do {
            gztack(*argv, gd, &strm, argv[1] == ((void*)0));
        } while (*++argv != ((void*)0));
    return 0;
}
