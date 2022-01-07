
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ fpos_t ;
struct TYPE_10__ {scalar_t__ _cnt; int _flag; scalar_t__ _ptr; scalar_t__ _base; } ;
typedef TYPE_1__ FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int _IOREAD ;
 int _snprintf (char*,int,char*) ;
 char* calloc (int,int) ;
 int fflush (TYPE_1__*) ;
 int fgetpos (TYPE_1__*,scalar_t__*) ;
 int fileno (TYPE_1__*) ;
 int fread (char*,int,int,TYPE_1__*) ;
 int free (char*) ;
 int fseek (TYPE_1__*,int,int ) ;
 int fwrite (char*,int,int,TYPE_1__*) ;
 int lseek (int,int,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int ok (int,char*,...) ;
 int rewind (TYPE_1__*) ;

__attribute__((used)) static void test_write_flush_size(FILE *file, int bufsize)
{
    char *inbuffer;
    char *outbuffer;
    int size, fd;
    fpos_t pos, pos2;

    fd = fileno(file);
    inbuffer = calloc(1, bufsize + 1);
    outbuffer = calloc(1, bufsize + 1);
    _snprintf(outbuffer, bufsize + 1, "0,1,2,3,4,5,6,7,8,9");

    for (size = bufsize + 1; size >= bufsize - 1; size--) {
        rewind(file);
        ok(file->_cnt == 0, "_cnt should be 0 after rewind, but is %d\n", file->_cnt);
        fwrite(outbuffer, 1, size, file);



        lseek(fd, 1, SEEK_SET);
        fflush(file);
        ok(file->_cnt == 0, "_cnt should be 0 after fflush, but is %d\n", file->_cnt);
        fseek(file, 0, SEEK_SET);
        ok(fread(inbuffer, 1, bufsize, file) == bufsize, "read failed\n");
        if (size == bufsize)
            ok(memcmp(outbuffer, inbuffer, bufsize) == 0, "missing flush by %d byte write\n", size);
        else
            ok(memcmp(outbuffer, inbuffer, bufsize) != 0, "unexpected flush by %d byte write\n", size);
    }
    rewind(file);
    fwrite(outbuffer, 1, bufsize / 2, file);
    fwrite(outbuffer + bufsize / 2, 1, bufsize / 2, file);
    lseek(fd, 1, SEEK_SET);
    fflush(file);
    fseek(file, 0, SEEK_SET);
    ok(fread(inbuffer, 1, bufsize, file) == bufsize, "read failed\n");
    ok(memcmp(outbuffer, inbuffer, bufsize) != 0, "unexpected flush by %d/2 byte double write\n", bufsize);

    ok(!fseek(file, -1, SEEK_END), "fseek failed\n");
    ok(!fgetpos(file, &pos), "fgetpos failed\n");
    ok(fread(inbuffer, 1, 1, file) == 1, "fread failed\n");
    ok(file->_flag & _IOREAD, "file->_flag = %x\n", file->_flag);
    ok(!file->_cnt, "file->_cnt = %d\n", file->_cnt);
    ok(file->_ptr != file->_base, "file->_ptr == file->_base\n");
    ok(fwrite(outbuffer, 1, bufsize, file), "fwrite failed\n");
    ok(file->_flag & _IOREAD, "file->_flag = %x\n", file->_flag);
    ok(!file->_cnt, "file->_cnt = %d\n", file->_cnt);
    ok(file->_ptr == file->_base, "file->_ptr == file->_base\n");
    ok(!fgetpos(file, &pos2), "fgetpos failed\n");
    ok(pos+bufsize+1 == pos2, "pos = %d (%d)\n", (int)pos, (int)pos2);
    free(inbuffer);
    free(outbuffer);
}
