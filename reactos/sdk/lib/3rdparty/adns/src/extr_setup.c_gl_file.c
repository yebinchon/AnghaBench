
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * file; } ;
typedef TYPE_1__ getline_ctx ;
typedef int adns_state ;
typedef int FILE ;


 int EINVAL ;
 int EOF ;
 int adns__diag (int ,int,int ,char*,char const*,int,...) ;
 int errno ;
 scalar_t__ ferror (int *) ;
 int getc (int *) ;
 int saveerr (int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int gl_file(adns_state ads, getline_ctx *src_io, const char *filename,
     int lno, char *buf, int buflen) {
  FILE *file= src_io->file;
  int c, i;
  char *p;

  p= buf;
  buflen--;
  i= 0;

  for (;;) {
    if (i == buflen) {
      adns__diag(ads,-1,0,"%s:%d: line too long, ignored",filename,lno);
      goto x_badline;
    }
    c= getc(file);
    if (!c) {
      adns__diag(ads,-1,0,"%s:%d: line contains nul, ignored",filename,lno);
      goto x_badline;
    } else if (c == '\n') {
      break;
    } else if (c == EOF) {
      if (ferror(file)) {
 saveerr(ads,errno);
 adns__diag(ads,-1,0,"%s:%d: read error: %s",filename,lno,strerror(errno));
 return -1;
      }
      if (!i) return -1;
      break;
    } else {
      *p++= c;
      i++;
    }
  }

  *p++= 0;
  return i;

 x_badline:
  saveerr(ads,EINVAL);
  while ((c= getc(file)) != EOF && c != '\n');
  return -2;
}
