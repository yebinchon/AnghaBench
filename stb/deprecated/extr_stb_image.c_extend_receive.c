
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code_bits; unsigned int code_buffer; } ;
typedef TYPE_1__ jpeg ;


 unsigned int* bmask ;
 int grow_buffer_unsafe (TYPE_1__*) ;
 unsigned int stbi_lrot (unsigned int,int) ;

__attribute__((used)) static int extend_receive(jpeg *j, int n)
{
   unsigned int m = 1 << (n-1);
   unsigned int k;
   if (j->code_bits < n) grow_buffer_unsafe(j);


   k = stbi_lrot(j->code_buffer, n);
   j->code_buffer = k & ~bmask[n];
   k &= bmask[n];
   j->code_bits -= n;
   if (k < m)
      return (-1 << n) + k + 1;
   else
      return k;
}
