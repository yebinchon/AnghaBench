
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

int print_help (const char *name)
{
    printf("Usage: %s -[a:v:o:dh]\n"
           "-a <path> audio input file\n"
           "-b <ms> audio frame duration\n"
           "-v <path> video input file\n"
           "-x <ms> video frame duration\n"
           "-o <idx> output audio device index\n"
           "-d print output audio devices\n"
           "-h print this help\n", name);

    return 0;
}
