
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ sqliterk_os ;
typedef int sqliterk_master_info ;
typedef int sqliterk ;
typedef int sqlite3 ;
struct TYPE_6__ {int key_len; unsigned char* kdf_salt; scalar_t__ key; } ;


 int SQLITERK_OK ;
 int SQLITE_OK ;
 int free (int ) ;
 TYPE_3__ g_cipher_conf ;
 int g_filter ;
 int g_in_path ;
 scalar_t__ g_load_master ;
 int g_num_filter ;
 scalar_t__ g_out_key ;
 int g_out_path ;
 scalar_t__ g_save_master ;
 int parse_options (int,char**) ;
 int print_log ;
 int sqlite3_close (int *) ;
 int sqlite3_key (int *,scalar_t__,int) ;
 int sqlite3_open (int ,int **) ;
 int sqliterk_close (int *) ;
 int sqliterk_free_master (int *) ;
 int sqliterk_load_master (scalar_t__,int *,int ,int ,int ,int **,unsigned char*) ;
 int sqliterk_make_master (int ,int ,int **) ;
 int sqliterk_open (int ,TYPE_3__*,int **) ;
 int sqliterk_output (int *,int *,int *,int ) ;
 int sqliterk_register (TYPE_1__) ;
 int sqliterk_save_master (int *,scalar_t__,int *,int ) ;
 int strlen (scalar_t__) ;

int main(int argc, char *argv[])
{
 int ret;
 sqlite3 *db;
 sqliterk *rk;

    sqliterk_os reg = { print_log };
    sqliterk_register(reg);

 parse_options(argc, argv);

 if (g_save_master)
 {
  ret = sqlite3_open(g_in_path, &db);
  if (ret != SQLITE_OK) return -3;
  if (g_cipher_conf.key)
   sqlite3_key(db, g_cipher_conf.key, g_cipher_conf.key_len);

  int out_key_len = g_out_key ? strlen(g_out_key) : 0;
  ret = sqliterk_save_master(db, g_save_master, ((void*)0), 0);

  sqlite3_close(db);
  return (ret == SQLITERK_OK) ? 0 : -4;
 }
 else
 {
  sqliterk_master_info *master = ((void*)0);
  unsigned char salt[16];
  if (g_load_master)
  {
   ret = sqliterk_load_master(g_load_master, ((void*)0), 0, g_filter, g_num_filter,
    &master, salt);
   g_cipher_conf.kdf_salt = salt;
  }
  else
   ret = sqliterk_make_master(g_filter, g_num_filter, &master);
  if (ret != SQLITERK_OK) return -6;

  ret = sqliterk_open(g_in_path, g_cipher_conf.key ? &g_cipher_conf : ((void*)0), &rk);
  if (ret != SQLITERK_OK) return -3;

  ret = sqlite3_open(g_out_path, &db);
  if (ret != SQLITE_OK) return -3;
  if (g_out_key)
   sqlite3_key(db, g_out_key, strlen(g_out_key));

  ret = sqliterk_output(rk, db, master, 0);

  sqliterk_free_master(master);
  sqlite3_close(db);
  sqliterk_close(rk);
  free(g_filter);

  return (ret == SQLITERK_OK) ? 0 : -4;
 }
}
