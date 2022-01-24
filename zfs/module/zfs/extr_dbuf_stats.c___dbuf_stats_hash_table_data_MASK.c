#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong_t ;
typedef  int u_longlong_t ;
typedef  int longlong_t ;
struct TYPE_16__ {TYPE_1__* dn_objset; int /*<<< orphan*/  dn_holds; } ;
typedef  TYPE_3__ dnode_t ;
struct TYPE_17__ {scalar_t__ doi_max_offset; scalar_t__ doi_fill_count; scalar_t__ doi_indirection; scalar_t__ doi_bonus_size; scalar_t__ doi_metadata_block_size; scalar_t__ doi_data_block_size; int /*<<< orphan*/  doi_bonus_type; int /*<<< orphan*/  doi_type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ dmu_object_info_t ;
struct TYPE_15__ {scalar_t__ db_object; scalar_t__ db_size; scalar_t__ db_offset; } ;
struct TYPE_18__ {TYPE_2__ db; int /*<<< orphan*/  db_objset; int /*<<< orphan*/  db_cache_link; int /*<<< orphan*/  db_holds; int /*<<< orphan*/  db_state; scalar_t__ db_blkid; scalar_t__ db_level; scalar_t__ db_buf; } ;
typedef  TYPE_5__ dmu_buf_impl_t ;
struct TYPE_19__ {scalar_t__ abi_holds; int /*<<< orphan*/  abi_l2arc_compress; scalar_t__ abi_l2arc_asize; scalar_t__ abi_l2arc_dattr; scalar_t__ abi_l2arc_hits; scalar_t__ abi_mfu_ghost_hits; scalar_t__ abi_mfu_hits; scalar_t__ abi_mru_ghost_hits; scalar_t__ abi_mru_hits; scalar_t__ abi_access; scalar_t__ abi_size; scalar_t__ abi_bufcnt; int /*<<< orphan*/  abi_flags; int /*<<< orphan*/  abi_state_contents; int /*<<< orphan*/  abi_state_type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ arc_buf_info_t ;
struct TYPE_14__ {int /*<<< orphan*/  os_spa; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char*,size_t,char*,char*,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_dbuf_state_index ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(char *buf, size_t size, dmu_buf_impl_t *db)
{
	arc_buf_info_t abi = { 0 };
	dmu_object_info_t doi = { 0 };
	dnode_t *dn = FUNC0(db);
	size_t nwritten;

	if (db->db_buf)
		FUNC2(db->db_buf, &abi, zfs_dbuf_state_index);

	FUNC1(dn, &doi);

	nwritten = FUNC6(buf, size,
	    "%-16s %-8llu %-8lld %-8lld %-8lld %-10llu %-8llu %-5d %-5d "
	    "%-7lu %-3d | %-5d %-5d 0x%-7x %-6lu %-8llu %-12llu "
	    "%-6lu %-6lu %-6lu %-6lu %-6lu %-8llu %-8llu %-8d %-6lu | "
	    "%-6d %-6d %-8lu %-8lu %-6llu %-6lu %-6lu %-8llu %-8llu\n",
	    /* dmu_buf_impl_t */
	    FUNC7(dn->dn_objset->os_spa),
	    (u_longlong_t)FUNC4(db->db_objset),
	    (longlong_t)db->db.db_object,
	    (longlong_t)db->db_level,
	    (longlong_t)db->db_blkid,
	    (u_longlong_t)db->db.db_offset,
	    (u_longlong_t)db->db.db_size,
	    !!FUNC3(db),
	    db->db_state,
	    (ulong_t)FUNC8(&db->db_holds),
	    FUNC5(&db->db_cache_link),
	    /* arc_buf_info_t */
	    abi.abi_state_type,
	    abi.abi_state_contents,
	    abi.abi_flags,
	    (ulong_t)abi.abi_bufcnt,
	    (u_longlong_t)abi.abi_size,
	    (u_longlong_t)abi.abi_access,
	    (ulong_t)abi.abi_mru_hits,
	    (ulong_t)abi.abi_mru_ghost_hits,
	    (ulong_t)abi.abi_mfu_hits,
	    (ulong_t)abi.abi_mfu_ghost_hits,
	    (ulong_t)abi.abi_l2arc_hits,
	    (u_longlong_t)abi.abi_l2arc_dattr,
	    (u_longlong_t)abi.abi_l2arc_asize,
	    abi.abi_l2arc_compress,
	    (ulong_t)abi.abi_holds,
	    /* dmu_object_info_t */
	    doi.doi_type,
	    doi.doi_bonus_type,
	    (ulong_t)doi.doi_data_block_size,
	    (ulong_t)doi.doi_metadata_block_size,
	    (u_longlong_t)doi.doi_bonus_size,
	    (ulong_t)doi.doi_indirection,
	    (ulong_t)FUNC8(&dn->dn_holds),
	    (u_longlong_t)doi.doi_fill_count,
	    (u_longlong_t)doi.doi_max_offset);

	if (nwritten >= size)
		return (size);

	return (nwritten + 1);
}