
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xxhash64; int file; } ;
typedef TYPE_1__ curl_data_t ;


 int XXH64_update (int *,void*,size_t const) ;
 size_t fwrite (void*,size_t,size_t,int ) ;

__attribute__((used)) static size_t curl_write(void* data, size_t size, size_t count, void* ptr) {
    curl_data_t* cdata = (curl_data_t*)ptr;
    size_t const written = fwrite(data, size, count, cdata->file);
    XXH64_update(&cdata->xxhash64, data, written * size);
    return written;
}
