
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 scalar_t__ _llseek (int,int,int,int*,int) ;

__attribute__((used)) static loff_t llseek( int fd, loff_t offset, int whence )
{
    loff_t actual;

    if (_llseek(fd, offset>>32, offset&0xffffffff, &actual, whence) != 0)
 return (loff_t)-1;
    return actual;
}
