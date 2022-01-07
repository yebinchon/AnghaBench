
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t end_; size_t start_; } ;
typedef TYPE_1__ MemBuffer ;



__attribute__((used)) static size_t MemDataSize(const MemBuffer* const mem) {
  return (mem->end_ - mem->start_);
}
