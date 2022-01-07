
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int jpip_to_j2k (char**) ;
 int jpip_to_jp2 (char**) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;

int main(int argc, char *argv[])
{
    char *ext;
    if (argc < 3) {
        fprintf(stderr, "Too few arguments:\n");
        fprintf(stderr, " - input  jpt or jpp file\n");
        fprintf(stderr, " - output j2k file\n");
        return 1;
    }

    ext = strrchr(argv[2], '.');
    if (ext) {

        if (strcmp(ext, ".jp2") == 0) {
            return jpip_to_jp2(argv);
        }
        if (strcmp(ext, ".j2k") == 0) {
            return jpip_to_j2k(argv);
        }
    }

    fprintf(stderr, "Invalid file extension for output file: %s\n", argv[2]);
    return 1;
}
