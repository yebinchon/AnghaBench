#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ fpos_t ;
struct TYPE_10__ {scalar_t__ _cnt; int _flag; scalar_t__ _ptr; scalar_t__ _base; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int _IOREAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (char*,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC13(FILE *file, int bufsize)
{
    char *inbuffer;
    char *outbuffer;
    int size, fd;
    fpos_t pos, pos2;

    fd = FUNC4(file);
    inbuffer = FUNC1(1, bufsize + 1);
    outbuffer = FUNC1(1, bufsize + 1);
    FUNC0(outbuffer, bufsize + 1, "0,1,2,3,4,5,6,7,8,9");

    for (size = bufsize + 1; size >= bufsize - 1; size--) {
        FUNC12(file);
        FUNC11(file->_cnt == 0, "_cnt should be 0 after rewind, but is %d\n", file->_cnt);
        FUNC8(outbuffer, 1, size, file);
        /* lseek() below intentionally redirects the write in fflush() to detect
         * if fwrite() has already flushed the whole buffer or not.
         */
        FUNC9(fd, 1, SEEK_SET);
        FUNC2(file);
        FUNC11(file->_cnt == 0, "_cnt should be 0 after fflush, but is %d\n", file->_cnt);
        FUNC7(file, 0, SEEK_SET);
        FUNC11(FUNC5(inbuffer, 1, bufsize, file) == bufsize, "read failed\n");
        if (size == bufsize)
            FUNC11(FUNC10(outbuffer, inbuffer, bufsize) == 0, "missing flush by %d byte write\n", size);
        else
            FUNC11(FUNC10(outbuffer, inbuffer, bufsize) != 0, "unexpected flush by %d byte write\n", size);
    }
    FUNC12(file);
    FUNC8(outbuffer, 1, bufsize / 2, file);
    FUNC8(outbuffer + bufsize / 2, 1, bufsize / 2, file);
    FUNC9(fd, 1, SEEK_SET);
    FUNC2(file);
    FUNC7(file, 0, SEEK_SET);
    FUNC11(FUNC5(inbuffer, 1, bufsize, file) == bufsize, "read failed\n");
    FUNC11(FUNC10(outbuffer, inbuffer, bufsize) != 0, "unexpected flush by %d/2 byte double write\n", bufsize);

    FUNC11(!FUNC7(file, -1, SEEK_END), "fseek failed\n");
    FUNC11(!FUNC3(file, &pos), "fgetpos failed\n");
    FUNC11(FUNC5(inbuffer, 1, 1, file) == 1, "fread failed\n");
    FUNC11(file->_flag & _IOREAD, "file->_flag = %x\n", file->_flag);
    FUNC11(!file->_cnt, "file->_cnt = %d\n", file->_cnt);
    FUNC11(file->_ptr != file->_base, "file->_ptr == file->_base\n");
    FUNC11(FUNC8(outbuffer, 1, bufsize, file), "fwrite failed\n");
    FUNC11(file->_flag & _IOREAD, "file->_flag = %x\n", file->_flag);
    FUNC11(!file->_cnt, "file->_cnt = %d\n", file->_cnt);
    FUNC11(file->_ptr == file->_base, "file->_ptr == file->_base\n");
    FUNC11(!FUNC3(file, &pos2), "fgetpos failed\n");
    FUNC11(pos+bufsize+1 == pos2, "pos = %d (%d)\n", (int)pos, (int)pos2);
    FUNC6(inbuffer);
    FUNC6(outbuffer);
}