
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int BLOCK_SIZE ;
 int SEEK_SET ;
 int dev ;
 int die (char*) ;
 int llseek (int ,int,int ) ;
 int printf (char*) ;
 long read (int ,char*,int) ;

__attribute__((used)) static long
do_check (char *buffer, int try, unsigned int current_block)
{
  long got;

  if (llseek (dev, (loff_t)current_block * BLOCK_SIZE, SEEK_SET)
      != (loff_t)current_block * BLOCK_SIZE)
    die ("seek failed during testing for blocks");

  got = read (dev, buffer, try * BLOCK_SIZE);
  if (got < 0)
    got = 0;

  if (got & (BLOCK_SIZE - 1))
    printf ("Unexpected values in do_check: probably bugs\n");
  got /= BLOCK_SIZE;

  return got;
}
