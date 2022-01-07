
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_libmount_unescaping_one (char*,char*,int,char*,char*) ;

__attribute__((used)) static void test_libmount_unescaping(void) {
        test_libmount_unescaping_one(
                        "escaped space + utf8",
                        "729 38 0:59 / /tmp/„zupa\\040zębowa” rw,relatime shared:395 - tmpfs die\\040Brühe rw,seclabel",
                        0,
                        "die Brühe",
                        "/tmp/„zupa zębowa”"
        );

        test_libmount_unescaping_one(
                        "escaped newline",
                        "729 38 0:59 / /tmp/x\\012y rw,relatime shared:395 - tmpfs newline rw,seclabel",
                        0,
                        "newline",
                        "/tmp/x\ny"
        );





        test_libmount_unescaping_one(
                        "empty source",
                        "760 38 0:60 / /tmp/emptysource rw,relatime shared:410 - tmpfs  rw,seclabel",
                        1,
                        "",
                        "/tmp/emptysource"
        );




        test_libmount_unescaping_one(
                        "foo\\rbar",
                        "790 38 0:61 / /tmp/foo\rbar rw,relatime shared:425 - tmpfs tmpfs rw,seclabel",
                        1,
                        "tmpfs",
                        "/tmp/foo\rbar"
        );
}
