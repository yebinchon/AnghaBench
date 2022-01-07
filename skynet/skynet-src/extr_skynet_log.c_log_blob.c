
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
log_blob(FILE *f, void * buffer, size_t sz) {
 size_t i;
 uint8_t * buf = buffer;
 for (i=0;i!=sz;i++) {
  fprintf(f, "%02x", buf[i]);
 }
}
