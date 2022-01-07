
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbuf ;
typedef int const byte ;


 int adns__vbuf_append (int *,int const*,int) ;
 int ctype_domainunquoted (int) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;

int vbuf__append_quoted1035(vbuf *vb, const byte *buf, int len) {
  char qbuf[10];
  int i, ch;

  while (len) {
    qbuf[0]= 0;
    for (i=0; i<len; i++) {
      ch= buf[i];
      if (ch <= ' ' || ch >= 127) {
 sprintf(qbuf,"\\%03o",ch);
 break;
      } else if (!ctype_domainunquoted(ch)) {
 sprintf(qbuf,"\\%c",ch);
 break;
      }
    }
    if (!adns__vbuf_append(vb,buf,i) || !adns__vbuf_append(vb,(byte*)qbuf,(int) strlen(qbuf)))
      return 0;
    if (i<len) i++;
    buf+= i;
    len-= i;
  }
  return 1;
}
