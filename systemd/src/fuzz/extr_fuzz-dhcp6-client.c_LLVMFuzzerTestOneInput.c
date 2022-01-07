
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int fuzz_client (int const*,size_t,int) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
        if (size > 65536)
                return 0;


        fuzz_client(data, size, 0);


        fuzz_client(data, size, 1);

        return 0;
}
