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
typedef  scalar_t__ ULONG ;

/* Variables and functions */
 scalar_t__ FILE_COMPLETE_IF_OPLOCKED ; 
 scalar_t__ FILE_CREATE_TREE_CONNECTION ; 
 scalar_t__ FILE_DELETE_ON_CLOSE ; 
 scalar_t__ FILE_DIRECTORY_FILE ; 
 scalar_t__ FILE_DISALLOW_EXCLUSIVE ; 
 scalar_t__ FILE_NON_DIRECTORY_FILE ; 
 scalar_t__ FILE_NO_COMPRESSION ; 
 scalar_t__ FILE_NO_EA_KNOWLEDGE ; 
 scalar_t__ FILE_NO_INTERMEDIATE_BUFFERING ; 
 scalar_t__ FILE_OPEN_BY_FILE_ID ; 
 scalar_t__ FILE_OPEN_FOR_BACKUP_INTENT ; 
 scalar_t__ FILE_OPEN_FOR_FREE_SPACE_QUERY ; 
 scalar_t__ FILE_OPEN_NO_RECALL ; 
 scalar_t__ FILE_OPEN_REMOTE_INSTANCE ; 
 scalar_t__ FILE_OPEN_REPARSE_POINT ; 
 scalar_t__ FILE_OPEN_REQUIRING_OPLOCK ; 
 scalar_t__ FILE_RANDOM_ACCESS ; 
 scalar_t__ FILE_RESERVE_OPFILTER ; 
 scalar_t__ FILE_SEQUENTIAL_ONLY ; 
 scalar_t__ FILE_SYNCHRONOUS_IO_ALERT ; 
 scalar_t__ FILE_SYNCHRONOUS_IO_NONALERT ; 
 scalar_t__ FILE_WRITE_THROUGH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static __inline void FUNC1(ULONG RequestedOptions) {
    if (RequestedOptions != 0) {
        ULONG options = RequestedOptions;

        FUNC0("requested options:\n");

        if (options & FILE_DIRECTORY_FILE) {
            FUNC0("    FILE_DIRECTORY_FILE\n");
            options &= ~FILE_DIRECTORY_FILE;
        }

        if (options & FILE_WRITE_THROUGH) {
            FUNC0("    FILE_WRITE_THROUGH\n");
            options &= ~FILE_WRITE_THROUGH;
        }

        if (options & FILE_SEQUENTIAL_ONLY) {
            FUNC0("    FILE_SEQUENTIAL_ONLY\n");
            options &= ~FILE_SEQUENTIAL_ONLY;
        }

        if (options & FILE_NO_INTERMEDIATE_BUFFERING) {
            FUNC0("    FILE_NO_INTERMEDIATE_BUFFERING\n");
            options &= ~FILE_NO_INTERMEDIATE_BUFFERING;
        }

        if (options & FILE_SYNCHRONOUS_IO_ALERT) {
            FUNC0("    FILE_SYNCHRONOUS_IO_ALERT\n");
            options &= ~FILE_SYNCHRONOUS_IO_ALERT;
        }

        if (options & FILE_SYNCHRONOUS_IO_NONALERT) {
            FUNC0("    FILE_SYNCHRONOUS_IO_NONALERT\n");
            options &= ~FILE_SYNCHRONOUS_IO_NONALERT;
        }

        if (options & FILE_NON_DIRECTORY_FILE) {
            FUNC0("    FILE_NON_DIRECTORY_FILE\n");
            options &= ~FILE_NON_DIRECTORY_FILE;
        }

        if (options & FILE_CREATE_TREE_CONNECTION) {
            FUNC0("    FILE_CREATE_TREE_CONNECTION\n");
            options &= ~FILE_CREATE_TREE_CONNECTION;
        }

        if (options & FILE_COMPLETE_IF_OPLOCKED) {
            FUNC0("    FILE_COMPLETE_IF_OPLOCKED\n");
            options &= ~FILE_COMPLETE_IF_OPLOCKED;
        }

        if (options & FILE_NO_EA_KNOWLEDGE) {
            FUNC0("    FILE_NO_EA_KNOWLEDGE\n");
            options &= ~FILE_NO_EA_KNOWLEDGE;
        }

        if (options & FILE_OPEN_REMOTE_INSTANCE) {
            FUNC0("    FILE_OPEN_REMOTE_INSTANCE\n");
            options &= ~FILE_OPEN_REMOTE_INSTANCE;
        }

        if (options & FILE_RANDOM_ACCESS) {
            FUNC0("    FILE_RANDOM_ACCESS\n");
            options &= ~FILE_RANDOM_ACCESS;
        }

        if (options & FILE_DELETE_ON_CLOSE) {
            FUNC0("    FILE_DELETE_ON_CLOSE\n");
            options &= ~FILE_DELETE_ON_CLOSE;
        }

        if (options & FILE_OPEN_BY_FILE_ID) {
            FUNC0("    FILE_OPEN_BY_FILE_ID\n");
            options &= ~FILE_OPEN_BY_FILE_ID;
        }

        if (options & FILE_OPEN_FOR_BACKUP_INTENT) {
            FUNC0("    FILE_OPEN_FOR_BACKUP_INTENT\n");
            options &= ~FILE_OPEN_FOR_BACKUP_INTENT;
        }

        if (options & FILE_NO_COMPRESSION) {
            FUNC0("    FILE_NO_COMPRESSION\n");
            options &= ~FILE_NO_COMPRESSION;
        }

#if NTDDI_VERSION >= NTDDI_WIN7
        if (options & FILE_OPEN_REQUIRING_OPLOCK) {
            FUNC0("    FILE_OPEN_REQUIRING_OPLOCK\n");
            options &= ~FILE_OPEN_REQUIRING_OPLOCK;
        }

        if (options & FILE_DISALLOW_EXCLUSIVE) {
            FUNC0("    FILE_DISALLOW_EXCLUSIVE\n");
            options &= ~FILE_DISALLOW_EXCLUSIVE;
        }
#endif

        if (options & FILE_RESERVE_OPFILTER) {
            FUNC0("    FILE_RESERVE_OPFILTER\n");
            options &= ~FILE_RESERVE_OPFILTER;
        }

        if (options & FILE_OPEN_REPARSE_POINT) {
            FUNC0("    FILE_OPEN_REPARSE_POINT\n");
            options &= ~FILE_OPEN_REPARSE_POINT;
        }

        if (options & FILE_OPEN_NO_RECALL) {
            FUNC0("    FILE_OPEN_NO_RECALL\n");
            options &= ~FILE_OPEN_NO_RECALL;
        }

        if (options & FILE_OPEN_FOR_FREE_SPACE_QUERY) {
            FUNC0("    FILE_OPEN_FOR_FREE_SPACE_QUERY\n");
            options &= ~FILE_OPEN_FOR_FREE_SPACE_QUERY;
        }

        if (options)
            FUNC0("    unknown options: %x\n", options);
    } else {
        FUNC0("requested options: (none)\n");
    }
}