
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sqlite3 ;
typedef int mm_recover_ctx ;
typedef int mm_backup_ctx ;


 scalar_t__ DBBAK_OP_BACKUP ;
 scalar_t__ DBBAK_OP_RECOVER ;
 int SQLITE_OK ;
 int free (int ) ;
 int g_db_path ;
 scalar_t__ g_dbkey ;
 int g_dump_path ;
 int g_flags ;
 scalar_t__ g_key ;
 int g_num_tabdesc ;
 scalar_t__ g_operation ;
 int g_tabdesc ;
 int g_tabdesc_buffer ;
 scalar_t__ g_tabdesc_path ;
 int mm_backup_finish (int *) ;
 int * mm_backup_init (int const*,int,int ,int ,int ) ;
 int mm_backup_run (int *,int *,int ,int ) ;
 int mm_recover_finish (int *) ;
 int * mm_recover_init (int ,int const*,int,int ) ;
 int mm_recover_run (int *,int *,int) ;
 int parse_options (int,char**) ;
 int parse_tabdesc (scalar_t__) ;
 int print_log ;
 int sqlite3_close (int *) ;
 int sqlite3_key (int *,scalar_t__,int) ;
 int sqlite3_open (int ,int **) ;
 int strlen (scalar_t__) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{
 int ret;
 sqlite3 *db;

 parse_options(argc, argv);
 if (g_tabdesc_path) parse_tabdesc(g_tabdesc_path);

 int key_len = g_key ? strlen(g_key) : 0;

 ret = sqlite3_open(g_db_path, &db);
 if (ret != SQLITE_OK) return -3;

 if (g_dbkey)
  sqlite3_key(db, g_dbkey, strlen(g_dbkey));

 if (g_operation == DBBAK_OP_BACKUP)
 {
  mm_backup_ctx *ctx = mm_backup_init((const uint8_t *) g_key, key_len, g_dump_path,
    g_flags, print_log);
  if (!ctx) return -2;

  ret = mm_backup_run(ctx, db, g_tabdesc, g_num_tabdesc);
  if (ret != 0) return -4;

  mm_backup_finish(ctx);
 }
 else if (g_operation == DBBAK_OP_RECOVER)
 {
  mm_recover_ctx *ctx = mm_recover_init(g_dump_path, (const uint8_t *) g_key, key_len, print_log);
  if (!ctx) return -2;

  ret = mm_recover_run(ctx, db, 1);
  if (ret != 0) return -4;

  mm_recover_finish(ctx);
 }
 else usage(argv[0]);

 free(g_tabdesc_buffer);
 free(g_tabdesc);

 sqlite3_close(db);
 return 0;
}
