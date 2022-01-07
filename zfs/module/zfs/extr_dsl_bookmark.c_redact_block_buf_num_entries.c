
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redact_block_phys_t ;



__attribute__((used)) static inline unsigned int
redact_block_buf_num_entries(unsigned int size)
{
 return (size / sizeof (redact_block_phys_t));
}
