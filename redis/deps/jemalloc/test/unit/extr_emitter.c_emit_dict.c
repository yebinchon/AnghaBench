
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int emitter_t ;


 int emitter_begin (int *) ;
 int emitter_dict_begin (int *,char*,char*) ;
 int emitter_dict_end (int *) ;
 int emitter_end (int *) ;
 int emitter_kv (int *,char*,char*,int ,int*) ;
 int emitter_kv_note (int *,char*,char*,int ,...) ;
 int emitter_type_bool ;
 int emitter_type_int ;
 int emitter_type_string ;

__attribute__((used)) static void
emit_dict(emitter_t *emitter) {
 bool b_false = 0;
 bool b_true = 1;
 int i_123 = 123;
 const char *str = "a string";

 emitter_begin(emitter);
 emitter_dict_begin(emitter, "foo", "This is the foo table:");
 emitter_kv(emitter, "abc", "ABC", emitter_type_bool, &b_false);
 emitter_kv(emitter, "def", "DEF", emitter_type_bool, &b_true);
 emitter_kv_note(emitter, "ghi", "GHI", emitter_type_int, &i_123,
     "note_key1", emitter_type_string, &str);
 emitter_kv_note(emitter, "jkl", "JKL", emitter_type_string, &str,
     "note_key2", emitter_type_bool, &b_false);
 emitter_dict_end(emitter);
 emitter_end(emitter);
}
