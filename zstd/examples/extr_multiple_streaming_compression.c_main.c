
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resources ;


 int compressFile_orDie (int const,char const* const,void*) ;
 int createResources_orDie (int const) ;
 int free (void*) ;
 int freeResources (int const) ;
 void* malloc_orDie (size_t) ;
 int memset (void*,int ,size_t const) ;
 int printf (char*,...) ;
 int strcat (void*,char const* const) ;
 size_t strlen (char const* const) ;

int main(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc<2) {
        printf("wrong arguments\n");
        printf("usage:\n");
        printf("%s FILE(s)\n", exeName);
        return 1;
    }

    int const cLevel = 7;
    resources const ress = createResources_orDie(cLevel);
    void* ofnBuffer = ((void*)0);
    size_t ofnbSize = 0;

    int argNb;
    for (argNb = 1; argNb < argc; argNb++) {
        const char* const ifn = argv[argNb];
        size_t const ifnSize = strlen(ifn);
        size_t const ofnSize = ifnSize + 5;
        if (ofnbSize <= ofnSize) {
            ofnbSize = ofnSize + 16;
            free(ofnBuffer);
            ofnBuffer = malloc_orDie(ofnbSize);
        }
        memset(ofnBuffer, 0, ofnSize);
        strcat(ofnBuffer, ifn);
        strcat(ofnBuffer, ".zst");
        compressFile_orDie(ress, ifn, ofnBuffer);
    }

    freeResources(ress);
    free(ofnBuffer);

    printf("compressed %i files \n", argc-1);

    return 0;
}
