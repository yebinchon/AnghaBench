
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void usage(void)
{
 fprintf(stderr,
"tee usage:\n\ttee [-a] file ... file_n\n\n\t-a\tappend to files instead of truncating\n\nTee reads its input, and writes to each of the specified files,\nas well as to the standard output.\n\nThis version supplied with Vim 4.2 to make ':make' possible.\nFor a more complete and stable version, consider getting\n[a port of] the GNU shellutils package.\n");
}
