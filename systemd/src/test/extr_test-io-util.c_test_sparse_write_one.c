
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int assert_se (int) ;
 scalar_t__ ftruncate (int,size_t) ;
 scalar_t__ lseek (int,int ,int ) ;
 scalar_t__ memcmp (char const*,char*,size_t) ;
 scalar_t__ read (int,char*,size_t) ;
 scalar_t__ sparse_write (int,char const*,size_t,int) ;

__attribute__((used)) static void test_sparse_write_one(int fd, const char *buffer, size_t n) {
        char check[n];

        assert_se(lseek(fd, 0, SEEK_SET) == 0);
        assert_se(ftruncate(fd, 0) >= 0);
        assert_se(sparse_write(fd, buffer, n, 4) == (ssize_t) n);

        assert_se(lseek(fd, 0, SEEK_CUR) == (off_t) n);
        assert_se(ftruncate(fd, n) >= 0);

        assert_se(lseek(fd, 0, SEEK_SET) == 0);
        assert_se(read(fd, check, n) == (ssize_t) n);

        assert_se(memcmp(buffer, check, n) == 0);
}
