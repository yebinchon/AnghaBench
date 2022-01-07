
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t buf_size_; size_t end_; int const* buf_; } ;
typedef TYPE_1__ MemBuffer ;



__attribute__((used)) static int RemapMemBuffer(MemBuffer* const mem,
                          const uint8_t* data, size_t size) {
  if (size < mem->buf_size_) return 0;

  mem->buf_ = data;
  mem->end_ = mem->buf_size_ = size;
  return 1;
}
