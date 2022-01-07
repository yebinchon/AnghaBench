
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int atoll (char const*) ;
 int decompressFile_orDie (char const* const,int const,int const) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int main(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc!=4) {
        fprintf(stderr, "wrong arguments\n");
        fprintf(stderr, "usage:\n");
        fprintf(stderr, "%s FILE START END\n", exeName);
        return 1;
    }

    {
        const char* const inFilename = argv[1];
        off_t const startOffset = atoll(argv[2]);
        off_t const endOffset = atoll(argv[3]);
        decompressFile_orDie(inFilename, startOffset, endOffset);
    }

    return 0;
}
