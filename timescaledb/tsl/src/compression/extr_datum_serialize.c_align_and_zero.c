
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 scalar_t__ att_align_nominal (char*,char) ;
 int check_allowed_data_len (int,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static inline char *
align_and_zero(char *ptr, char type_align, Size *max_size)
{
 char *new_pos = (char *) att_align_nominal(ptr, type_align);
 if (new_pos != ptr)
 {
  Size padding = new_pos - ptr;
  check_allowed_data_len(padding, *max_size);
  memset(ptr, 0, padding);
  *max_size = *max_size - padding;
 }
 return new_pos;
}
