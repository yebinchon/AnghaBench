
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_ev {int dummy; } ;
typedef int json_t ;
struct TYPE_2__ {char* error; int error_code; } ;


 TYPE_1__* TLS ;
 int assert (int) ;
 int enable_json ;
 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int json_integer (int ) ;
 int * json_object () ;
 scalar_t__ json_object_set (int *,char*,int ) ;
 int json_string (char*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*,char*,...) ;

void print_fail (struct in_ev *ev) {
  mprint_start (ev);
  if (!enable_json) {
    mprintf (ev, "FAIL: %d: %s\n", TLS->error_code, TLS->error);
  } else {
  }
  mprint_end (ev);
}
