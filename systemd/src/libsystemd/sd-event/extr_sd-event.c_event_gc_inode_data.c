
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_data {int inodes; } ;
struct inode_data {struct inotify_data* inotify_data; scalar_t__ event_sources; } ;
typedef int sd_event ;


 int assert (int *) ;
 int event_free_inode_data (int *,struct inode_data*) ;
 int event_free_inotify_data (int *,struct inotify_data*) ;
 scalar_t__ hashmap_isempty (int ) ;

__attribute__((used)) static void event_gc_inode_data(
                sd_event *e,
                struct inode_data *d) {

        struct inotify_data *inotify_data;

        assert(e);

        if (!d)
                return;

        if (d->event_sources)
                return;

        inotify_data = d->inotify_data;
        event_free_inode_data(e, d);

        if (inotify_data && hashmap_isempty(inotify_data->inodes))
                event_free_inotify_data(e, inotify_data);
}
