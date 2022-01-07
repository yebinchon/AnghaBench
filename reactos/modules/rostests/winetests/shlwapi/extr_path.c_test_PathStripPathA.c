
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PathStripPathA (char*) ;
 int ok (int,char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_PathStripPathA(void)
{
    const char const_path[] = "test";
    char path[] = "short//path\\file.txt";

    PathStripPathA(path);
    ok(!strcmp(path, "file.txt"), "path = %s\n", path);



    PathStripPathA((char*)const_path);
}
