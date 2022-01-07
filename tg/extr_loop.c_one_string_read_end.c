
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS ;
 int do_get_string (int ) ;
 int fflush (int ) ;
 int one_string ;
 int one_string_cb (int ,void*,int ) ;
 size_t one_string_num ;
 int * one_string_prompt ;
 int ** one_string_results ;
 size_t one_string_total_args ;
 int printf (char*) ;
 int reactivate_readline () ;
 scalar_t__ read_one_string ;
 int stdout ;
 int string_cb_arg ;
 int tfree_str (int *) ;
 int * tstrdup (int ) ;

__attribute__((used)) static void one_string_read_end (void) {
  printf ("\n");
  fflush (stdout);

  read_one_string = 0;
  tfree_str (one_string_prompt);
  one_string_prompt = ((void*)0);
  reactivate_readline ();

  one_string_results[one_string_num] = tstrdup (one_string);
  ++one_string_num;

  if (one_string_num < one_string_total_args) {
    do_get_string (TLS);
  } else {
    one_string_cb (TLS, (void *)one_string_results, string_cb_arg);
    int i;
    for (i = 0; i < one_string_total_args; i++) {
      tfree_str (one_string_results[i]);
    }
  }
}
