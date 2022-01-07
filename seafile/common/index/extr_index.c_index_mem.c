
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int hash_sha1_file (void*,int ,int ,unsigned char*) ;
 int typename (int) ;

__attribute__((used)) static int index_mem(unsigned char *sha1, void *buf, uint64_t size,
                     enum object_type type, const char *path)
{
    if (!type)
        type = OBJ_BLOB;

    hash_sha1_file(buf, size, typename(type), sha1);
    return 0;
}
