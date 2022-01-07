
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpos_t ;
typedef int FILE ;


 int _filbuf (int *) ;
 int fclose (int *) ;
 scalar_t__ fgetpos (int *,int*) ;
 int * fopen (char*,char*) ;
 int ftell (int *) ;
 int fwrite (char*,int,int,int *) ;
 int ok (int,char*) ;
 int unlink (char*) ;

__attribute__((used)) static void test_filbuf( void )
{
    FILE *fp;
    int c;
    fpos_t pos;

    fp = fopen("filbuf.tst", "wb");
    fwrite("\n\n\n\n", 1, 4, fp);
    fclose(fp);

    fp = fopen("filbuf.tst", "rt");
    c = _filbuf(fp);
    ok(c == '\n', "read wrong byte\n");
    ok(ftell(fp) == -2, "ascii crlf removal does not match native\n");
    ok(fgetpos(fp, &pos) == 0, "fgetpos fail\n");
    ok(pos == -2, "ftell does not match fgetpos\n");
    fclose(fp);
    unlink("filbuf.tst");
}
