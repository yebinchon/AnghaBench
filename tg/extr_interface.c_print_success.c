
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
typedef int json_t ;


 int assert (int) ;
 scalar_t__ enable_json ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int * json_object () ;
 scalar_t__ json_object_set (int *,char*,int ) ;
 int json_string (char*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,...) ;

void print_success (struct in_ev *ev) {
  if (ev || enable_json) {
    mprint_start (ev);
    if (!enable_json) {
      mprintf (ev, "SUCCESS\n");
    } else {
    }
    mprint_end (ev);
  }
}
