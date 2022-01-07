
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ compress_lz4; scalar_t__ compress_xz; } ;
typedef TYPE_1__ JournalFile ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static inline bool JOURNAL_FILE_COMPRESS(JournalFile *f) {
        assert(f);
        return f->compress_xz || f->compress_lz4;
}
