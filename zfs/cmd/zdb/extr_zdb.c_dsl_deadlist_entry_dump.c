
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int longlong_t ;
struct TYPE_5__ {scalar_t__ bpo_object; } ;
struct TYPE_4__ {TYPE_2__ dle_bpobj; scalar_t__ dle_mintxg; } ;
typedef TYPE_1__ dsl_deadlist_entry_t ;
typedef int buf ;


 int ASSERT (int ) ;
 int dump_full_bpobj (TYPE_2__*,char*,int ) ;
 int* dump_opt ;
 int printf (char*,int ,int ) ;
 int snprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static int
dsl_deadlist_entry_dump(void *arg, dsl_deadlist_entry_t *dle)
{
 ASSERT(arg == ((void*)0));
 if (dump_opt['d'] >= 5) {
  char buf[128];
  (void) snprintf(buf, sizeof (buf),
      "mintxg %llu -> obj %llu",
      (longlong_t)dle->dle_mintxg,
      (longlong_t)dle->dle_bpobj.bpo_object);

  dump_full_bpobj(&dle->dle_bpobj, buf, 0);
 } else {
  (void) printf("mintxg %llu -> obj %llu\n",
      (longlong_t)dle->dle_mintxg,
      (longlong_t)dle->dle_bpobj.bpo_object);
 }
 return (0);
}
