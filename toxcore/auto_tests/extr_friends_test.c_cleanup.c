
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_id ;
 int crypto_box_PUBLICKEYBYTES ;
 int munmap (int ,int ) ;
 int parent_id ;
 int puts (char*) ;

void cleanup(void)
{
    munmap(parent_id, crypto_box_PUBLICKEYBYTES);
    munmap(child_id, crypto_box_PUBLICKEYBYTES);
    puts("============= END TEST =============");
}
