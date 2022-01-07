
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zi_start; unsigned long long zi_end; int zi_object; int zi_level; } ;
typedef TYPE_1__ zinject_record_t ;
typedef int err_type_t ;
typedef int dnode_phys_t ;




 int fprintf (int ,char*,...) ;
 int stderr ;
 void* strtoull (char*,char**,int) ;

__attribute__((used)) static int
initialize_range(err_type_t type, int level, char *range,
    zinject_record_t *record)
{



 if (range == ((void*)0)) {





  record->zi_start = 0;
  record->zi_end = -1ULL;
 } else {
  char *end;


  record->zi_start = strtoull(range, &end, 10);


  if (*end == '\0')
   record->zi_end = record->zi_start + 1;
  else if (*end == ',')
   record->zi_end = strtoull(end + 1, &end, 10);

  if (*end != '\0') {
   (void) fprintf(stderr, "invalid range '%s': must be "
       "a numeric range of the form 'start[,end]'\n",
       range);
   return (-1);
  }
 }

 switch (type) {
 default:
  break;
 case 129:
  break;

 case 128:






  if (range != ((void*)0)) {
   (void) fprintf(stderr, "range cannot be specified when "
       "type is 'dnode'\n");
   return (-1);
  }

  record->zi_start = record->zi_object * sizeof (dnode_phys_t);
  record->zi_end = record->zi_start + sizeof (dnode_phys_t);
  record->zi_object = 0;
  break;
 }

 record->zi_level = level;

 return (0);
}
