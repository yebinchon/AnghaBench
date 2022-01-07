
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 int * handle_scsi_ata (int *,char**) ;
 int * handle_scsi_default (int *,char**) ;
 int * handle_scsi_fibre_channel (int *,char**) ;
 int * handle_scsi_hyperv (int *,char**,int) ;
 int * handle_scsi_iscsi (int *,char**) ;
 int * handle_scsi_sas (int *,char**) ;
 int path_prepend (char**,char*,char const*) ;
 scalar_t__ sd_device_get_devtype (int *,char const**) ;
 scalar_t__ sd_device_get_sysattr_value (int *,char*,char const**) ;
 scalar_t__ sd_device_get_syspath (int *,char const**) ;
 int * skip_subsystem (int *,char*) ;
 int streq (char const*,char*) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static sd_device *handle_scsi(sd_device *parent, char **path, bool *supported_parent) {
        const char *devtype, *id, *name;

        if (sd_device_get_devtype(parent, &devtype) < 0 ||
            !streq(devtype, "scsi_device"))
                return parent;


        if (sd_device_get_sysattr_value(parent, "ieee1394_id", &id) >= 0) {
                path_prepend(path, "ieee1394-0x%s", id);
                *supported_parent = 1;
                return skip_subsystem(parent, "scsi");
        }


        if (sd_device_get_syspath(parent, &name) < 0)
                return ((void*)0);

        if (strstr(name, "/rport-")) {
                *supported_parent = 1;
                return handle_scsi_fibre_channel(parent, path);
        }

        if (strstr(name, "/end_device-")) {
                *supported_parent = 1;
                return handle_scsi_sas(parent, path);
        }

        if (strstr(name, "/session")) {
                *supported_parent = 1;
                return handle_scsi_iscsi(parent, path);
        }

        if (strstr(name, "/ata"))
                return handle_scsi_ata(parent, path);

        if (strstr(name, "/vmbus_"))
                return handle_scsi_hyperv(parent, path, 37);
        else if (strstr(name, "/VMBUS"))
                return handle_scsi_hyperv(parent, path, 38);

        return handle_scsi_default(parent, path);
}
