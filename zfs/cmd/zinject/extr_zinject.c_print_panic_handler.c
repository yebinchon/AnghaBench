
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zi_func; } ;
typedef TYPE_1__ zinject_record_t ;


 int printf (char*,...) ;

__attribute__((used)) static int
print_panic_handler(int id, const char *pool, zinject_record_t *record,
    void *data)
{
 int *count = data;

 if (record->zi_func[0] == '\0')
  return (0);

 if (*count == 0) {
  (void) printf("%3s  %-15s  %s\n", "ID", "POOL", "FUNCTION");
  (void) printf("---  ---------------  ----------------\n");
 }

 *count += 1;

 (void) printf("%3d  %-15s  %s\n", id, pool, record->zi_func);

 return (0);
}
