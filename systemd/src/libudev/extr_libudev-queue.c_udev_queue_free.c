
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_queue {int fd; } ;


 int assert (struct udev_queue*) ;
 struct udev_queue* mfree (struct udev_queue*) ;
 int safe_close (int ) ;

__attribute__((used)) static struct udev_queue *udev_queue_free(struct udev_queue *udev_queue) {
        assert(udev_queue);

        safe_close(udev_queue->fd);
        return mfree(udev_queue);
}
