
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* fname; } ;
typedef TYPE_1__ parser_state ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int node_parse_input (TYPE_1__*,int *,char const*) ;
 int perror (char*) ;

int
node_parse_file(parser_state* p, const char* fname)
{
  int r;
  FILE* fp = fopen(fname, "rb");
  if (fp == ((void*)0)) {
    perror("fopen");
    return 0;
  }
  p->fname = fname;
  r = node_parse_input(p, fp, fname);
  fclose(fp);
  return r;
}
