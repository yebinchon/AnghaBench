
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int genType_e ;
typedef int U32 ;
struct TYPE_2__ {int contentSize; } ;


 int DISPLAY (char*) ;
 int MAX_DECOMPRESSED_SIZE_LOG ;
 int MIN (int ,int) ;
 int ZSTD_BLOCKSIZE_MAX ;
 int advancedUsage (char*) ;
 int g_displayLevel ;
 unsigned int g_maxBlockSize ;
 int g_maxDecompressedSizeLog ;
 int generateCorpus (int,unsigned int,char const*,char const*,int ) ;
 int generateCorpusWithDict (int,unsigned int,char const*,char const*,unsigned int,int ) ;
 int generateFile (int,char const*,char const*,int ) ;
 int gt_block ;
 int gt_frame ;
 int longCommandWArg (char const**,char*) ;
 int makeSeed () ;
 TYPE_1__ opts ;
 void* readInt (char const**) ;
 void* readU32FromChar (char const**) ;
 int runTestMode (int,unsigned int,unsigned int,int ) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int usage (char*) ;

int main(int argc, char** argv)
{
    U32 seed = 0;
    int seedset = 0;
    unsigned numFiles = 0;
    unsigned testDuration = 0;
    int testMode = 0;
    const char* path = ((void*)0);
    const char* origPath = ((void*)0);
    int useDict = 0;
    unsigned dictSize = (10 << 10);
    genType_e genType = gt_frame;

    int argNb;


    for (argNb=1; argNb<argc; argNb++) {
        const char* argument = argv[argNb];
        if(!argument) continue;


        if (argument[0]=='-') {
            argument++;
            while (*argument!=0) {
                switch(*argument)
                {
                case 'h':
                    usage(argv[0]);
                    return 0;
                case 'H':
                    advancedUsage(argv[0]);
                    return 0;
                case 'v':
                    argument++;
                    g_displayLevel++;
                    break;
                case 's':
                    argument++;
                    seedset=1;
                    seed = readInt(&argument);
                    break;
                case 'n':
                    argument++;
                    numFiles = readInt(&argument);
                    break;
                case 'T':
                    argument++;
                    testDuration = readInt(&argument);
                    if (*argument == 'm') {
                        testDuration *= 60;
                        argument++;
                        if (*argument == 'n') argument++;
                    }
                    break;
                case 'o':
                    argument++;
                    origPath = argument;
                    argument += strlen(argument);
                    break;
                case 'p':
                    argument++;
                    path = argument;
                    argument += strlen(argument);
                    break;
                case 't':
                    argument++;
                    testMode = 1;
                    break;
                case '-':
                    argument++;
                    if (strcmp(argument, "content-size") == 0) {
                        opts.contentSize = 1;
                    } else if (longCommandWArg(&argument, "use-dict=")) {
                        dictSize = readU32FromChar(&argument);
                        useDict = 1;
                    } else if (strcmp(argument, "gen-blocks") == 0) {
                        genType = gt_block;
                    } else if (longCommandWArg(&argument, "max-block-size-log=")) {
                        U32 value = readU32FromChar(&argument);
                        if (value >= 2 && value <= ZSTD_BLOCKSIZE_MAX) {
                            g_maxBlockSize = 1U << value;
                        }
                    } else if (longCommandWArg(&argument, "max-content-size-log=")) {
                        U32 value = readU32FromChar(&argument);
                        g_maxDecompressedSizeLog =
                                MIN(MAX_DECOMPRESSED_SIZE_LOG, value);
                    } else {
                        advancedUsage(argv[0]);
                        return 1;
                    }
                    argument += strlen(argument);
                    break;
                default:
                    usage(argv[0]);
                    return 1;
    } } } }

    if (!seedset) {
        seed = makeSeed();
    }

    if (testMode) {
        return runTestMode(seed, numFiles, testDuration, genType);
    } else {
        if (testDuration) {
            DISPLAY("Error: -T requires test mode (-t)\n\n");
            usage(argv[0]);
            return 1;
        }
    }

    if (!path) {
        DISPLAY("Error: path is required in file generation mode\n");
        usage(argv[0]);
        return 1;
    }

    if (numFiles == 0 && useDict == 0) {
        return generateFile(seed, path, origPath, genType);
    } else if (useDict == 0){
        return generateCorpus(seed, numFiles, path, origPath, genType);
    } else {

        return generateCorpusWithDict(seed, numFiles, path, origPath, dictSize, genType);
    }

}
