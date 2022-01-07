
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* text; } ;
typedef TYPE_1__ getline_ctx ;
typedef int adns_state ;


 int EINVAL ;
 int adns__diag (int ,int,int ,char*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int saveerr (int ,int ) ;
 int strcspn (char const*,char*) ;

__attribute__((used)) static int gl_text(adns_state ads, getline_ctx *src_io, const char *filename,
     int lno, char *buf, int buflen) {
  const char *cp= src_io->text;
  int l;

  if (!cp || !*cp) return -1;

  if (*cp == ';' || *cp == '\n') cp++;
  l= strcspn(cp,";\n");
  src_io->text = cp+l;

  if (l >= buflen) {
    adns__diag(ads,-1,0,"%s:%d: line too long, ignored",filename,lno);
    saveerr(ads,EINVAL);
    return -2;
  }

  memcpy(buf,cp,l);
  buf[l]= 0;
  return l;
}
