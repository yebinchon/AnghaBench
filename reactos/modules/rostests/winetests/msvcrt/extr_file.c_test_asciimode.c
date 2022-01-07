
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fputs (char*,int *) ;
 int fread (char*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;
 int ok (int,char*,...) ;
 int rewind (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static void test_asciimode(void)
{
    FILE *fp;
    char buf[64];
    int c, i, j;


    fp = fopen("ascii.tst", "wb");
    fputs("\r\r\n", fp);
    fclose(fp);
    fp = fopen("ascii.tst", "rt");
    ok(fgets(buf, sizeof(buf), fp) != ((void*)0), "fgets\n");
    ok(0 == strcmp(buf, "\r\n"), "CR CR LF not read as CR LF\n");
    rewind(fp);
    ok((fread(buf, 1, sizeof(buf), fp) == 2) && (0 == strcmp(buf, "\r\n")), "CR CR LF not read as CR LF\n");
    fclose(fp);
    unlink("ascii.tst");


    fp = fopen("ascii.tst", "wb");
    fputs("foo\032", fp);
    fseek(fp, 65536L, SEEK_SET);
    fputs("bar", fp);
    fclose(fp);
    fp = fopen("ascii.tst", "rt");
    ok(fgets(buf, sizeof(buf), fp) != ((void*)0), "fgets foo\n");
    ok(0 == strcmp(buf, "foo"), "foo ^Z not read as foo by fgets\n");
    ok(fgets(buf, sizeof(buf), fp) == ((void*)0), "fgets after logical EOF\n");
    rewind(fp);
    ok((fread(buf, 1, sizeof(buf), fp) == 3) && (0 == strcmp(buf, "foo")), "foo ^Z not read as foo by fread\n");
    ok((fread(buf, 1, sizeof(buf), fp) == 0), "fread after logical EOF\n");
    fclose(fp);


    fp= fopen("ascii.tst","wb");
    fputs("0\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n", fp);
    fclose(fp);

    fp = fopen("ascii.tst", "r");
    c= fgetc(fp);
    ok(c == '0', "fgetc failed, expected '0', got '%c'\n", c);
    c= fgetc(fp);
    ok(c == '\n', "fgetc failed, expected '\\n', got '%c'\n", c);
    fseek(fp,0,SEEK_CUR);
    for(i=1; i<10; i++) {
 ok((j = ftell(fp)) == i*3, "ftell fails in TEXT mode\n");
 fseek(fp,0,SEEK_CUR);
 ok((c = fgetc(fp)) == '0'+ i, "fgetc after fseek failed in line %d\n", i);
 c= fgetc(fp);
        ok(c == '\n', "fgetc failed, expected '\\n', got '%c'\n", c);
    }

    rewind(fp);
    c= fgetc(fp);
    ok(c == '0', "fgetc failed, expected '0', got '%c'\n", c);
    fseek(fp, 2 ,SEEK_CUR);
    for(i=1; i<10; i++) {
 ok((c = fgetc(fp)) == '0'+ i, "fgetc after fseek with pos Offset failed in line %d\n", i);
 fseek(fp, 2 ,SEEK_CUR);
    }
    fseek(fp, 9*3 ,SEEK_SET);
    c = fgetc(fp);
    ok(c == '9', "fgetc failed, expected '9', got '%c'\n", c);
    fseek(fp, -4 ,SEEK_CUR);
    for(i= 8; i>=0; i--) {
 ok((c = fgetc(fp)) == '0'+ i, "fgetc after fseek with neg Offset failed in line %d\n", i);
 fseek(fp, -4 ,SEEK_CUR);
    }

    fclose(fp);
    fp = fopen("ascii.tst", "r");
    fseek(fp, 3 ,SEEK_SET);
    ok((c = fgetc(fp)) == '1', "fgetc fails to read next char when positioned on \\r\n");
    fclose(fp);

    unlink("ascii.tst");
}
