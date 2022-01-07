
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_2__ {int * ptr; } ;


 int BUCKET_SIZE ;
 int FIELD_OFFSET (int ,int ) ;
 int bstr_t ;
 TYPE_1__ u ;

__attribute__((used)) static inline size_t bstr_alloc_size(size_t size)
{
    return (FIELD_OFFSET(bstr_t, u.ptr[size]) + sizeof(WCHAR) + BUCKET_SIZE-1) & ~(BUCKET_SIZE-1);
}
