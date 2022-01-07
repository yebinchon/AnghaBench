
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_3__ {struct list* buckets; } ;
typedef TYPE_1__ dictionary ;
typedef size_t DWORD ;


 size_t BUCKET_COUNT ;

__attribute__((used)) static inline struct list *get_bucket_head(dictionary *dict, DWORD hash)
{
    return &dict->buckets[hash % BUCKET_COUNT];
}
