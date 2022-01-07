
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int stdout ;

__attribute__((used)) static void usage(char* name)
{
    fprintf(stdout, "Usage: %s infile.bin outfile.c outfile.h [BIN|BINSTR|STR] array_name [array_attribute [header_for_attribute]]\n", name);
}
