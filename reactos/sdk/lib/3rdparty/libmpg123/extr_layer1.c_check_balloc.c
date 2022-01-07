
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpg123_handle ;


 scalar_t__ NOQUIET ;
 int error (char*) ;

__attribute__((used)) static int check_balloc(mpg123_handle *fr, unsigned int *balloc, unsigned int *end)
{
 unsigned int *ba;
 for(ba=balloc; ba != end; ++ba)
 if(*ba == 15)
 {
  if(NOQUIET) error("Illegal bit allocation value.");
  return -1;
 }

 return 0;
}
