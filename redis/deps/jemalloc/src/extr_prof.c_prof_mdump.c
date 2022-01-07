
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int DUMP_FILENAME_BUFSIZE ;
 int assert (int) ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int opt_prof ;
 char* opt_prof_prefix ;
 int prof_booted ;
 int prof_dump (int *,int,char const*,int) ;
 int prof_dump_filename (char*,char,int ) ;
 int prof_dump_mseq ;
 int prof_dump_seq_mtx ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tsdn (int *) ;

bool
prof_mdump(tsd_t *tsd, const char *filename) {
 cassert(config_prof);
 assert(tsd_reentrancy_level_get(tsd) == 0);

 if (!opt_prof || !prof_booted) {
  return 1;
 }
 char filename_buf[DUMP_FILENAME_BUFSIZE];
 if (filename == ((void*)0)) {

  if (opt_prof_prefix[0] == '\0') {
   return 1;
  }
  malloc_mutex_lock(tsd_tsdn(tsd), &prof_dump_seq_mtx);
  prof_dump_filename(filename_buf, 'm', prof_dump_mseq);
  prof_dump_mseq++;
  malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_seq_mtx);
  filename = filename_buf;
 }
 return prof_dump(tsd, 1, filename, 0);
}
