
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const uint32_t ;
struct TYPE_5__ {int start_; int * buf_; } ;
typedef TYPE_1__ MemBuffer ;


 int const GetLE32 (int const* const) ;
 int MemDataSize (TYPE_1__* const) ;
 int Skip (TYPE_1__* const,int) ;
 int assert (int) ;

__attribute__((used)) static uint32_t ReadMemBufLE32(MemBuffer* const mem) {
  const uint8_t* const data = mem->buf_ + mem->start_;
  const uint32_t val = GetLE32(data);
  assert(MemDataSize(mem) >= 4);
  Skip(mem, 4);
  return val;
}
