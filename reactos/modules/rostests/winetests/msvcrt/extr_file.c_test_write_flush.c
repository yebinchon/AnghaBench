
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int iobuf ;
struct TYPE_6__ {int _bufsiz; } ;
typedef TYPE_1__ FILE ;


 int _IOFBF ;
 char* _tempnam (char*,char*) ;
 int fclose (TYPE_1__*) ;
 TYPE_1__* fopen (char*,char*) ;
 int free (char*) ;
 int ok (int,char*,...) ;
 int setvbuf (TYPE_1__*,char*,int ,int) ;
 int test_write_flush_size (TYPE_1__*,int) ;
 int unlink (char*) ;

__attribute__((used)) static void test_write_flush(void)
{
    char iobuf[1024];
    char *tempf;
    FILE *file;

    tempf = _tempnam(".","wne");
    file = fopen(tempf, "wb+");
    ok(file != ((void*)0), "unable to create test file\n");
    iobuf[0] = 0;
    ok(file->_bufsiz == 4096, "incorrect default buffer size: %d\n", file->_bufsiz);
    test_write_flush_size(file, file->_bufsiz);
    setvbuf(file, iobuf, _IOFBF, sizeof(iobuf));
    test_write_flush_size(file, sizeof(iobuf));
    fclose(file);
    unlink(tempf);
    free(tempf);
}
