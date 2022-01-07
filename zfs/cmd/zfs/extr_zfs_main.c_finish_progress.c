
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int free (int *) ;
 int printf (char*,char*) ;
 int * pt_header ;
 scalar_t__ pt_shown ;
 int stdout ;

__attribute__((used)) static void
finish_progress(char *done)
{
 if (pt_shown) {
  (void) printf("%s\n", done);
  (void) fflush(stdout);
 }
 free(pt_header);
 pt_header = ((void*)0);
}
