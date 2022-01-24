#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  mm_recover_ctx ;
typedef  int /*<<< orphan*/  mm_backup_ctx ;

/* Variables and functions */
 scalar_t__ DBBAK_OP_BACKUP ; 
 scalar_t__ DBBAK_OP_RECOVER ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_db_path ; 
 scalar_t__ g_dbkey ; 
 int /*<<< orphan*/  g_dump_path ; 
 int /*<<< orphan*/  g_flags ; 
 scalar_t__ g_key ; 
 int /*<<< orphan*/  g_num_tabdesc ; 
 scalar_t__ g_operation ; 
 int /*<<< orphan*/  g_tabdesc ; 
 int /*<<< orphan*/  g_tabdesc_buffer ; 
 scalar_t__ g_tabdesc_path ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  print_log ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14(int argc, char *argv[])
{
	int ret;
	sqlite3 *db;
	
	FUNC7(argc, argv);
	if (g_tabdesc_path) FUNC8(g_tabdesc_path);
	
	int key_len = g_key ? FUNC12(g_key) : 0;
	
	ret = FUNC11(g_db_path, &db);
	if (ret != SQLITE_OK) return -3;
	
	if (g_dbkey)
		FUNC10(db, g_dbkey, FUNC12(g_dbkey));
	
	if (g_operation == DBBAK_OP_BACKUP)
	{
		mm_backup_ctx *ctx = FUNC2((const uint8_t *) g_key, key_len, g_dump_path,
				g_flags, print_log);
		if (!ctx) return -2;
		
		ret = FUNC3(ctx, db, g_tabdesc, g_num_tabdesc);
		if (ret != 0) return -4;
		
		FUNC1(ctx);
	}
	else if (g_operation == DBBAK_OP_RECOVER)
	{
		mm_recover_ctx *ctx = FUNC5(g_dump_path, (const uint8_t *) g_key, key_len, print_log);
		if (!ctx) return -2;
		
		ret = FUNC6(ctx, db, 1);
		if (ret != 0) return -4;
		
		FUNC4(ctx);
	}
	else FUNC13(argv[0]);
	
	FUNC0(g_tabdesc_buffer);
	FUNC0(g_tabdesc);
	
	FUNC9(db);
	return 0;
}