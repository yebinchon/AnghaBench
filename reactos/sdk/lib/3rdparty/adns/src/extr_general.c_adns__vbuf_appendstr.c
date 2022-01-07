
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbuf ;
typedef int byte ;


 int adns__vbuf_append (int *,int *,int) ;
 int strlen (char const*) ;

int adns__vbuf_appendstr(vbuf *vb, const char *data) {
  int l;
  l= strlen(data);
  return adns__vbuf_append(vb,(byte*)data,l);
}
