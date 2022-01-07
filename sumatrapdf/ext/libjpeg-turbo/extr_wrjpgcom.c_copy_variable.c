
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERREXIT (char*) ;
 int read_1_byte () ;
 unsigned int read_2_bytes () ;
 int write_1_byte (int ) ;
 int write_2_bytes (unsigned int) ;

__attribute__((used)) static void
copy_variable (void)

{
  unsigned int length;


  length = read_2_bytes();
  write_2_bytes(length);

  if (length < 2)
    ERREXIT("Erroneous JPEG marker length");
  length -= 2;

  while (length > 0) {
    write_1_byte(read_1_byte());
    length--;
  }
}
