
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JournalStorageSpace ;


 int zero (int ) ;

__attribute__((used)) static void cache_space_invalidate(JournalStorageSpace *space) {
        zero(*space);
}
