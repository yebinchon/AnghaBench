
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mutex_prof_arena_ind_t ;
typedef int emitter_t ;
typedef int emitter_row_t ;
typedef int emitter_col_t ;


 char** arena_mutex_names ;
 int emitter_json_dict_begin (int *,char const*) ;
 int emitter_json_dict_end (int *) ;
 int emitter_row_init (int *) ;
 int emitter_table_row (int *,int *) ;
 size_t mutex_prof_num_arena_mutexes ;
 int mutex_prof_num_uint32_t_counters ;
 int mutex_prof_num_uint64_t_counters ;
 int mutex_stats_emit (int *,int *,int *,int *) ;
 int mutex_stats_init_cols (int *,char*,int *,int *,int *) ;
 int mutex_stats_read_arena (unsigned int,size_t,char const*,int *,int *,int *) ;

__attribute__((used)) static void
stats_arena_mutexes_print(emitter_t *emitter, unsigned arena_ind) {
 emitter_row_t row;
 emitter_col_t col_name;
 emitter_col_t col64[mutex_prof_num_uint64_t_counters];
 emitter_col_t col32[mutex_prof_num_uint32_t_counters];

 emitter_row_init(&row);
 mutex_stats_init_cols(&row, "", &col_name, col64, col32);

 emitter_json_dict_begin(emitter, "mutexes");
 emitter_table_row(emitter, &row);

 for (mutex_prof_arena_ind_t i = 0; i < mutex_prof_num_arena_mutexes;
     i++) {
  const char *name = arena_mutex_names[i];
  emitter_json_dict_begin(emitter, name);
  mutex_stats_read_arena(arena_ind, i, name, &col_name, col64,
      col32);
  mutex_stats_emit(emitter, &row, col64, col32);
  emitter_json_dict_end(emitter);
 }
 emitter_json_dict_end(emitter);
}
