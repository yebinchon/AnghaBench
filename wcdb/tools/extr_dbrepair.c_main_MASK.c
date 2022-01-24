#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ sqliterk_os ;
typedef  int /*<<< orphan*/  sqliterk_master_info ;
typedef  int /*<<< orphan*/  sqliterk ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {int key_len; unsigned char* kdf_salt; scalar_t__ key; } ;

/* Variables and functions */
 int SQLITERK_OK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ g_cipher_conf ; 
 int /*<<< orphan*/  g_filter ; 
 int /*<<< orphan*/  g_in_path ; 
 scalar_t__ g_load_master ; 
 int /*<<< orphan*/  g_num_filter ; 
 scalar_t__ g_out_key ; 
 int /*<<< orphan*/  g_out_path ; 
 scalar_t__ g_save_master ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  print_log ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,unsigned char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__) ; 
 int FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__) ; 

int FUNC14(int argc, char *argv[])
{
	int ret;
	sqlite3 *db;
	sqliterk *rk;
	
    sqliterk_os reg = { print_log };
    FUNC11(reg);

	FUNC1(argc, argv);
	
	if (g_save_master)
	{
		ret = FUNC4(g_in_path, &db);
		if (ret != SQLITE_OK) return -3;
		if (g_cipher_conf.key)
			FUNC3(db, g_cipher_conf.key, g_cipher_conf.key_len);

		int out_key_len = g_out_key ? FUNC13(g_out_key) : 0;
		ret = FUNC12(db, g_save_master, NULL, 0);
		
		FUNC2(db);
		return (ret == SQLITERK_OK) ? 0 : -4;
	}
	else
	{
		sqliterk_master_info *master = NULL;
		unsigned char salt[16];
		if (g_load_master)
		{
			ret = FUNC7(g_load_master, NULL, 0, g_filter, g_num_filter,
				&master, salt);
			g_cipher_conf.kdf_salt = salt;
		}
		else
			ret = FUNC8(g_filter, g_num_filter, &master);
		if (ret != SQLITERK_OK) return -6;

		ret = FUNC9(g_in_path, g_cipher_conf.key ? &g_cipher_conf : NULL, &rk);
		if (ret != SQLITERK_OK) return -3;

		ret = FUNC4(g_out_path, &db);
		if (ret != SQLITE_OK) return -3;
		if (g_out_key)
			FUNC3(db, g_out_key, FUNC13(g_out_key));

		ret = FUNC10(rk, db, master, 0);

		FUNC6(master);
		FUNC2(db);
		FUNC5(rk);
		FUNC0(g_filter);

		return (ret == SQLITERK_OK) ? 0 : -4;
	}
}