
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_equal (char*,int ) ;
 int test_smaller (char*,char*,int ) ;
 int vlc_filenamecmp ;

int main (void)
{
    test_smaller("", "a", vlc_filenamecmp);
    test_smaller("a", "b", vlc_filenamecmp);
    test_smaller("foo1.ogg", "foo2.ogg", vlc_filenamecmp);
    test_smaller("foo2.ogg", "foo10.ogg", vlc_filenamecmp);
    test_smaller("foo1.ogg", "foo10.ogg", vlc_filenamecmp);
    test_smaller("foo01.ogg", "foo1.ogg", vlc_filenamecmp);
    test_equal("", vlc_filenamecmp);
    test_equal("a", vlc_filenamecmp);
    test_equal("123", vlc_filenamecmp);
    return 0;
}
