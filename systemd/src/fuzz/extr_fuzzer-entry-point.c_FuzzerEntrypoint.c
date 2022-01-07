
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LLVMFuzzerTestOneInput (int const*,size_t) ;

int FuzzerEntrypoint(const uint8_t *data, size_t size) {
        return LLVMFuzzerTestOneInput(data, size);
}
