
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_6__ {char* c; int ul; int l; scalar_t__ ui64; scalar_t__ i64; int ui32; int i32; } ;
struct TYPE_7__ {int data_type; TYPE_1__ value; int name; } ;
typedef TYPE_2__ kstat_named_t ;
 int KSTAT_NAMED_STR_BUFLEN (TYPE_2__*) ;
 char* KSTAT_NAMED_STR_PTR (TYPE_2__*) ;
 int PANIC (char*,int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int
kstat_seq_show_named(struct seq_file *f, kstat_named_t *knp)
{
 seq_printf(f, "%-31s %-4d ", knp->name, knp->data_type);

 switch (knp->data_type) {
  case 135:
   knp->value.c[15] = '\0';
   seq_printf(f, "%-16s", knp->value.c);
   break;




  case 134:
   seq_printf(f, "%d", knp->value.i32);
   break;
  case 130:
   seq_printf(f, "%u", knp->value.ui32);
   break;
  case 133:
   seq_printf(f, "%lld", (signed long long)knp->value.i64);
   break;
  case 129:
   seq_printf(f, "%llu",
       (unsigned long long)knp->value.ui64);
   break;
  case 132:
   seq_printf(f, "%ld", knp->value.l);
   break;
  case 128:
   seq_printf(f, "%lu", knp->value.ul);
   break;
  case 131:
   KSTAT_NAMED_STR_PTR(knp)
    [KSTAT_NAMED_STR_BUFLEN(knp)-1] = '\0';
   seq_printf(f, "%s", KSTAT_NAMED_STR_PTR(knp));
   break;
  default:
   PANIC("Undefined kstat data type %d\n", knp->data_type);
 }

 seq_printf(f, "\n");

 return (0);
}
