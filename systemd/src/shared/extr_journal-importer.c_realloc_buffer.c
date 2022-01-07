
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; int iovw; int size; } ;
typedef TYPE_1__ JournalImporter ;


 char* GREEDY_REALLOC (char*,int ,size_t) ;
 int iovw_rebase (int *,char*,char*) ;

__attribute__((used)) static char* realloc_buffer(JournalImporter *imp, size_t size) {
        char *b, *old = imp->buf;

        b = GREEDY_REALLOC(imp->buf, imp->size, size);
        if (!b)
                return ((void*)0);

        iovw_rebase(&imp->iovw, old, imp->buf);

        return b;
}
