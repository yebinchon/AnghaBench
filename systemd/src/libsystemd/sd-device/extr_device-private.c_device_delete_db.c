
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int ENOENT ;
 int assert (int *) ;
 int device_get_id_filename (int *,char const**) ;
 int errno ;
 char* strjoina (char*,char const*) ;
 int unlink (char*) ;

int device_delete_db(sd_device *device) {
        const char *id;
        char *path;
        int r;

        assert(device);

        r = device_get_id_filename(device, &id);
        if (r < 0)
                return r;

        path = strjoina("/run/udev/data/", id);

        r = unlink(path);
        if (r < 0 && errno != ENOENT)
                return -errno;

        return 0;
}
