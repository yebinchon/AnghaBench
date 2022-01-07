
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 scalar_t__ llseek (int,int ,int ) ;
 int read (int,char*,int) ;

__attribute__((used)) static int
valid_offset (int fd, loff_t offset)
{
  char ch;

  if (llseek (fd, offset, SEEK_SET) < 0)
    return FALSE;
  if (read (fd, &ch, 1) < 1)
    return FALSE;
  return TRUE;
}
