
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mmap; scalar_t__ hashmap_key; TYPE_1__* server; TYPE_7__* journal; } ;
typedef TYPE_2__ Writer ;
struct TYPE_10__ {int path; } ;
struct TYPE_8__ {int writers; } ;


 int free (scalar_t__) ;
 int hashmap_remove (int ,scalar_t__) ;
 int journal_file_close (TYPE_7__*) ;
 int log_debug (char*,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int mmap_cache_unref (scalar_t__) ;

__attribute__((used)) static Writer* writer_free(Writer *w) {
        if (!w)
                return ((void*)0);

        if (w->journal) {
                log_debug("Closing journal file %s.", w->journal->path);
                journal_file_close(w->journal);
        }

        if (w->server && w->hashmap_key)
                hashmap_remove(w->server->writers, w->hashmap_key);

        free(w->hashmap_key);

        if (w->mmap)
                mmap_cache_unref(w->mmap);

        return mfree(w);
}
