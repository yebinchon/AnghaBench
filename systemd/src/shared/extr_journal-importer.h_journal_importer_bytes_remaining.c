
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t filled; } ;
typedef TYPE_1__ JournalImporter ;



__attribute__((used)) static inline size_t journal_importer_bytes_remaining(const JournalImporter *imp) {
        return imp->filled;
}
