
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int * pt_header ;
 scalar_t__ pt_shown ;
 int * safe_strdup (char*) ;
 int stdout ;

__attribute__((used)) static void
set_progress_header(char *header)
{
 assert(pt_header == ((void*)0));
 pt_header = safe_strdup(header);
 if (pt_shown) {
  (void) printf("%s: ", header);
  (void) fflush(stdout);
 }
}
