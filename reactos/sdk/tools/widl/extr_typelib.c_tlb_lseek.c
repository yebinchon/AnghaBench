
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SEEK_SET ;
 int error (char*) ;
 int lseek (int,int ,int ) ;

__attribute__((used)) static void tlb_lseek(int fd, off_t offset)
{
    if(lseek(fd, offset, SEEK_SET) == -1)
        error("lseek failed\n");
}
