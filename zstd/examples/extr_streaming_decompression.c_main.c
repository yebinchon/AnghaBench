
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decompressFile_orDie (char const* const) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int main(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc!=2) {
        fprintf(stderr, "wrong arguments\n");
        fprintf(stderr, "usage:\n");
        fprintf(stderr, "%s FILE\n", exeName);
        return 1;
    }

    const char* const inFilename = argv[1];

    decompressFile_orDie(inFilename);
    return 0;
}
