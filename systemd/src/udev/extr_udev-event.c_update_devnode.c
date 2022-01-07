
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_device ;
struct TYPE_3__ {int mode; int seclabel_list; int gid; int uid; int dev_db_clone; int * dev; } ;
typedef TYPE_1__ UdevEvent ;


 int DEVICE_ACTION_ADD ;
 int ENOENT ;
 int MODE_INVALID ;
 int device_for_action (int *,int ) ;
 int device_get_devnode_gid (int *,int *) ;
 int device_get_devnode_mode (int *,int*) ;
 int device_get_devnode_uid (int *,int *) ;
 scalar_t__ gid_is_valid (int ) ;
 int log_device_error_errno (int *,int,char*) ;
 int sd_device_get_devnum (int *,int *) ;
 int udev_node_add (int *,int,int,int ,int ,int ) ;
 int udev_node_update_old_links (int *,int ) ;
 int uid_is_valid (int ) ;

__attribute__((used)) static int update_devnode(UdevEvent *event) {
        sd_device *dev = event->dev;
        int r;

        r = sd_device_get_devnum(dev, ((void*)0));
        if (r == -ENOENT)
                return 0;
        if (r < 0)
                return log_device_error_errno(dev, r, "Failed to get devnum: %m");


        if (event->dev_db_clone)
                (void) udev_node_update_old_links(dev, event->dev_db_clone);

        if (!uid_is_valid(event->uid)) {
                r = device_get_devnode_uid(dev, &event->uid);
                if (r < 0 && r != -ENOENT)
                        return log_device_error_errno(dev, r, "Failed to get devnode UID: %m");
        }

        if (!gid_is_valid(event->gid)) {
                r = device_get_devnode_gid(dev, &event->gid);
                if (r < 0 && r != -ENOENT)
                        return log_device_error_errno(dev, r, "Failed to get devnode GID: %m");
        }

        if (event->mode == MODE_INVALID) {
                r = device_get_devnode_mode(dev, &event->mode);
                if (r < 0 && r != -ENOENT)
                        return log_device_error_errno(dev, r, "Failed to get devnode mode: %m");
        }
        if (event->mode == MODE_INVALID && gid_is_valid(event->gid) && event->gid > 0)

                event->mode = 0660;

        bool apply_mac = device_for_action(dev, DEVICE_ACTION_ADD);

        return udev_node_add(dev, apply_mac, event->mode, event->uid, event->gid, event->seclabel_list);
}
