
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_queue_item {int file; } ;


 int free (int ) ;
 struct write_queue_item* mfree (struct write_queue_item*) ;

__attribute__((used)) static struct write_queue_item* write_queue_item_free(struct write_queue_item *item) {
        if (!item)
                return ((void*)0);

        free(item->file);
        return mfree(item);
}
