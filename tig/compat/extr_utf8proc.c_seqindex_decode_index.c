
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t utf8proc_uint32_t ;
typedef int utf8proc_uint16_t ;
typedef int utf8proc_int32_t ;


 int seqindex_decode_entry (int const**) ;
 int * utf8proc_sequences ;

__attribute__((used)) static utf8proc_int32_t seqindex_decode_index(const utf8proc_uint32_t seqindex)
{
  const utf8proc_uint16_t *entry = &utf8proc_sequences[seqindex];
  return seqindex_decode_entry(&entry);
}
