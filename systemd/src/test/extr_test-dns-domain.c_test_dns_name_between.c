
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_dns_name_between_one (char*,char*,char*,int) ;

__attribute__((used)) static void test_dns_name_between(void) {



        test_dns_name_between_one("example", "a.example", "yljkjljk.a.example", 1);
        test_dns_name_between_one("a.example", "yljkjljk.a.example", "Z.a.example", 1);
        test_dns_name_between_one("yljkjljk.a.example", "Z.a.example", "zABC.a.EXAMPLE", 1);
        test_dns_name_between_one("Z.a.example", "zABC.a.EXAMPLE", "z.example", 1);
        test_dns_name_between_one("zABC.a.EXAMPLE", "z.example", "\\033.z.example", 1);
        test_dns_name_between_one("z.example", "\\033.z.example", "*.z.example", 1);
        test_dns_name_between_one("\\033.z.example", "*.z.example", "\\200.z.example", 1);
        test_dns_name_between_one("*.z.example", "\\200.z.example", "example", 1);
        test_dns_name_between_one("\\200.z.example", "example", "a.example", 1);

        test_dns_name_between_one("example", "a.example", "example", 1);
        test_dns_name_between_one("example", "example", "example", 0);
        test_dns_name_between_one("example", "example", "yljkjljk.a.example", 0);
        test_dns_name_between_one("example", "yljkjljk.a.example", "yljkjljk.a.example", 0);
        test_dns_name_between_one("hkps.pool.sks-keyservers.net", "_pgpkey-https._tcp.hkps.pool.sks-keyservers.net", "ipv4.pool.sks-keyservers.net", 1);
}
