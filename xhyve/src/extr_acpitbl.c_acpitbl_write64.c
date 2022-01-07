
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int memcpy (void*,scalar_t__*,int) ;

__attribute__((used)) static void
acpitbl_write64(void *base, uint64_t offset, uint64_t val) {
 memcpy(((void *) (((uintptr_t) base) + offset)), &val, 8);
}
