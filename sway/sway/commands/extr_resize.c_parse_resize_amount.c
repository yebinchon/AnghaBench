
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resize_amount {int amount; void* unit; } ;


 void* RESIZE_UNIT_DEFAULT ;
 void* RESIZE_UNIT_INVALID ;
 void* parse_resize_unit (char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int parse_resize_amount(int argc, char **argv,
  struct resize_amount *amount) {
 char *err;
 amount->amount = (int)strtol(argv[0], &err, 10);
 if (*err) {

  amount->unit = parse_resize_unit(err);
  return 1;
 }
 if (argc == 1) {
  amount->unit = RESIZE_UNIT_DEFAULT;
  return 1;
 }

 amount->unit = parse_resize_unit(argv[1]);
 if (amount->unit == RESIZE_UNIT_INVALID) {
  amount->unit = RESIZE_UNIT_DEFAULT;
  return 1;
 }
 return 2;
}
