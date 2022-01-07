
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*) ;
 int usage (char const*) ;

__attribute__((used)) static void advancedUsage(const char* programName)
{
    usage(programName);
    DISPLAY( "\n");
    DISPLAY( "Advanced arguments        :\n");
    DISPLAY( " --content-size           : always include the content size in the frame header\n");
    DISPLAY( " --use-dict=#             : include a dictionary used to decompress the corpus\n");
    DISPLAY( " --gen-blocks             : generate raw compressed blocks without block/frame headers\n");
    DISPLAY( " --max-block-size-log=#   : max block size log, must be in range [2, 17]\n");
    DISPLAY( " --max-content-size-log=# : max content size log, must be <= 20\n");
    DISPLAY( "                            (this is ignored with gen-blocks)\n");
}
