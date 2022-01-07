
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int PTYPE_SOCKET ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int log_blob (int *,void*,size_t) ;
 int log_socket (int *,void*,size_t) ;
 int skynet_now () ;

void
skynet_log_output(FILE *f, uint32_t source, int type, int session, void * buffer, size_t sz) {
 if (type == PTYPE_SOCKET) {
  log_socket(f, buffer, sz);
 } else {
  uint32_t ti = (uint32_t)skynet_now();
  fprintf(f, ":%08x %d %d %u ", source, type, session, ti);
  log_blob(f, buffer, sz);
  fprintf(f,"\n");
  fflush(f);
 }
}
