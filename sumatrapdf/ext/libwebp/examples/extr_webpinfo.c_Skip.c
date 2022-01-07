
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t start_; } ;
typedef TYPE_1__ MemBuffer ;



__attribute__((used)) static void Skip(MemBuffer* const mem, size_t size) {
  mem->start_ += size;
}
