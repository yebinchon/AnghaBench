
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_3__ {char* za_name; int za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int objset_t ;


 int ZFS_DIRENT_OBJ (int ) ;
 size_t ZFS_DIRENT_TYPE (int ) ;
 int dump_zap_stats (int *,int ) ;
 int printf (char*,...) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;

__attribute__((used)) static void
dump_zpldir(objset_t *os, uint64_t object, void *data, size_t size)
{
 zap_cursor_t zc;
 zap_attribute_t attr;
 const char *typenames[] = {
          "not specified",
          "FIFO",
          "Character Device",
          "3 (invalid)",
          "Directory",
          "5 (invalid)",
          "Block Device",
          "7 (invalid)",
          "Regular File",
          "9 (invalid)",
           "Symbolic Link",
           "11 (invalid)",
           "Socket",
           "Door",
           "Event Port",
           "15 (invalid)",
 };

 dump_zap_stats(os, object);
 (void) printf("\n");

 for (zap_cursor_init(&zc, os, object);
     zap_cursor_retrieve(&zc, &attr) == 0;
     zap_cursor_advance(&zc)) {
  (void) printf("\t\t%s = %lld (type: %s)\n",
      attr.za_name, ZFS_DIRENT_OBJ(attr.za_first_integer),
      typenames[ZFS_DIRENT_TYPE(attr.za_first_integer)]);
 }
 zap_cursor_fini(&zc);
}
