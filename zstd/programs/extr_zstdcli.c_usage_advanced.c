
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*,...) ;
 char* WELCOME_MESSAGE ;
 int ZSTDCLI_CLEVEL_DEFAULT ;
 int ZSTDCLI_CLEVEL_MAX ;
 int ZSTD_maxCLevel () ;
 int g_defaultDictName ;
 int g_defaultMaxDictSize ;
 int g_defaultMaxWindowLog ;
 int g_defaultSelectivityLevel ;
 int usage (char const*) ;

__attribute__((used)) static int usage_advanced(const char* programName)
{
    DISPLAY(WELCOME_MESSAGE);
    usage(programName);
    DISPLAY( "\n");
    DISPLAY( "Advanced arguments : \n");
    DISPLAY( " -V     : display Version number and exit \n");
    DISPLAY( " -v     : verbose mode; specify multiple times to increase verbosity\n");
    DISPLAY( " -q     : suppress warnings; specify twice to suppress errors too\n");
    DISPLAY( " -c     : force write to standard output, even if it is the console\n");
    DISPLAY( " -l     : print information about zstd compressed files \n");
    DISPLAY( "--exclude-compressed:  only compress files that are not previously compressed \n");

    DISPLAY( "--ultra : enable levels beyond %i, up to %i (requires more memory)\n", ZSTDCLI_CLEVEL_MAX, ZSTD_maxCLevel());
    DISPLAY( "--long[=#]: enable long distance matching with given window log (default: %u)\n", g_defaultMaxWindowLog);
    DISPLAY( "--fast[=#]: switch to very fast compression levels (default: %u)\n", 1);
    DISPLAY( "--adapt : dynamically adapt compression level to I/O conditions \n");
    DISPLAY( "--stream-size=# : optimize compression parameters for streaming input of given number of bytes \n");
    DISPLAY( "--size-hint=# optimize compression parameters for streaming input of approximately this size\n");
    DISPLAY( "--target-compressed-block-size=# : make compressed block near targeted size \n");





    DISPLAY( "--no-dictID : don't write dictID into header (dictionary compression)\n");
    DISPLAY( "--[no-]check : integrity check (default: enabled) \n");
    DISPLAY( "--[no-]compress-literals : force (un)compressed literals \n");





    DISPLAY( "--format=zstd : compress files to the .zst format (default) \n");
    DISPLAY( "--test  : test compressed file integrity \n");



    DISPLAY( "--[no-]sparse : sparse mode (default: disabled)\n");


    DISPLAY( " -M#    : Set a memory usage limit for decompression \n");
    DISPLAY( "--no-progress : do not display the progress bar \n");
    DISPLAY( "--      : All arguments after \"--\" are treated as files \n");

    DISPLAY( "\n");
    DISPLAY( "Dictionary builder : \n");
    DISPLAY( "--train ## : create a dictionary from a training set of files \n");
    DISPLAY( "--train-cover[=k=#,d=#,steps=#,split=#,shrink[=#]] : use the cover algorithm with optional args\n");
    DISPLAY( "--train-fastcover[=k=#,d=#,f=#,steps=#,split=#,accel=#,shrink[=#]] : use the fast cover algorithm with optional args\n");
    DISPLAY( "--train-legacy[=s=#] : use the legacy algorithm with selectivity (default: %u)\n", g_defaultSelectivityLevel);
    DISPLAY( " -o file : `file` is dictionary name (default: %s) \n", g_defaultDictName);
    DISPLAY( "--maxdict=# : limit dictionary to specified size (default: %u) \n", g_defaultMaxDictSize);
    DISPLAY( "--dictID=# : force dictionary ID to specified value (default: random)\n");


    DISPLAY( "\n");
    DISPLAY( "Benchmark arguments : \n");
    DISPLAY( " -b#    : benchmark file(s), using # compression level (default: %d) \n", ZSTDCLI_CLEVEL_DEFAULT);
    DISPLAY( " -e#    : test all compression levels from -bX to # (default: 1)\n");
    DISPLAY( " -i#    : minimum evaluation time in seconds (default: 3s) \n");
    DISPLAY( " -B#    : cut file into independent blocks of size # (default: no block)\n");
    DISPLAY( "--priority=rt : set process priority to real-time \n");

    return 0;
}
