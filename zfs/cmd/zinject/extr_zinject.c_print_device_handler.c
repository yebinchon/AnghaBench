
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zi_guid; char* zi_func; scalar_t__ zi_cmd; } ;
typedef TYPE_1__ zinject_record_t ;
typedef int u_longlong_t ;


 scalar_t__ ZINJECT_DELAY_IO ;
 int printf (char*,...) ;

__attribute__((used)) static int
print_device_handler(int id, const char *pool, zinject_record_t *record,
    void *data)
{
 int *count = data;

 if (record->zi_guid == 0 || record->zi_func[0] != '\0')
  return (0);

 if (record->zi_cmd == ZINJECT_DELAY_IO)
  return (0);

 if (*count == 0) {
  (void) printf("%3s  %-15s  %s\n", "ID", "POOL", "GUID");
  (void) printf("---  ---------------  ----------------\n");
 }

 *count += 1;

 (void) printf("%3d  %-15s  %llx\n", id, pool,
     (u_longlong_t)record->zi_guid);

 return (0);
}
