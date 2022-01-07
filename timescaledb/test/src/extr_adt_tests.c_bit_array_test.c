
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BitArrayIterator ;
typedef int BitArray ;


 int AssertInt64Eq (int ,int) ;
 int bit_array_append (int *,int,int) ;
 int bit_array_init (int *) ;
 int bit_array_iter_next (int *,int) ;
 int bit_array_iter_next_rev (int *,int) ;
 int bit_array_iterator_init (int *,int *) ;
 int bit_array_iterator_init_rev (int *,int *) ;

__attribute__((used)) static void
bit_array_test(void)
{
 BitArray bits;
 BitArrayIterator iter;
 int i;
 bit_array_init(&bits);

 for (i = 0; i < 65; i++)
  bit_array_append(&bits, i, i);

 bit_array_append(&bits, 0, 0);
 bit_array_append(&bits, 0, 0);
 bit_array_append(&bits, 64, 0x9069060909009090);
 bit_array_append(&bits, 1, 0);
 bit_array_append(&bits, 64, ~0x9069060909009090);
 bit_array_append(&bits, 1, 1);

 bit_array_iterator_init(&iter, &bits);
 for (i = 0; i < 65; i++)
  AssertInt64Eq(bit_array_iter_next(&iter, i), i);

 AssertInt64Eq(bit_array_iter_next(&iter, 0), 0);
 AssertInt64Eq(bit_array_iter_next(&iter, 0), 0);
 AssertInt64Eq(bit_array_iter_next(&iter, 64), 0x9069060909009090);
 AssertInt64Eq(bit_array_iter_next(&iter, 1), 0);
 AssertInt64Eq(bit_array_iter_next(&iter, 64), ~0x9069060909009090);
 AssertInt64Eq(bit_array_iter_next(&iter, 1), 1);

 bit_array_iterator_init_rev(&iter, &bits);
 AssertInt64Eq(bit_array_iter_next_rev(&iter, 1), 1);
 AssertInt64Eq(bit_array_iter_next_rev(&iter, 64), ~0x9069060909009090);
 AssertInt64Eq(bit_array_iter_next_rev(&iter, 1), 0);
 AssertInt64Eq(bit_array_iter_next_rev(&iter, 64), 0x9069060909009090);
 AssertInt64Eq(bit_array_iter_next_rev(&iter, 0), 0);
 AssertInt64Eq(bit_array_iter_next_rev(&iter, 0), 0);
 for (i = 64; i >= 0; i--)
  AssertInt64Eq(bit_array_iter_next_rev(&iter, i), i);
}
