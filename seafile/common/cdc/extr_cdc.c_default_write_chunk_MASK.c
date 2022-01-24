#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  chksum_str ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  block_buf; int /*<<< orphan*/  checksum; } ;
typedef  TYPE_1__ CDCDescriptor ;

/* Variables and functions */
 int CHECKSUM_LENGTH ; 
 int NAME_MAX_SZ ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (CDCDescriptor *chunk_descr)
{
    char filename[NAME_MAX_SZ];
    char chksum_str[CHECKSUM_LENGTH *2 + 1];
    int fd_chunk, ret;

    FUNC2(chksum_str, 0, sizeof(chksum_str));
    FUNC3 (chunk_descr->checksum, chksum_str, CHECKSUM_LENGTH);
    FUNC4 (filename, NAME_MAX_SZ, "./%s", chksum_str);
    fd_chunk = FUNC1 (filename, O_RDWR | O_CREAT | O_BINARY, 0644);
    if (fd_chunk < 0)
        return -1;    
    
    ret = FUNC5 (fd_chunk, chunk_descr->block_buf, chunk_descr->len);
    FUNC0 (fd_chunk);
    return ret;
}