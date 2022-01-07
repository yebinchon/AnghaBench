
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int devices; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int dev_t ;
typedef int SessionDevice ;
typedef TYPE_1__ Session ;


 int BUS_ERROR_DEVICE_NOT_TAKEN ;
 int BUS_ERROR_NOT_IN_CONTROL ;
 int DEVICE_MAJOR_VALID (int ) ;
 int DEVICE_MINOR_VALID (int ) ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int assert (TYPE_1__*) ;
 int * hashmap_get (int ,int *) ;
 int makedev (int ,int ) ;
 int sd_bus_error_setf (int *,int ,char*) ;
 int sd_bus_message_get_sender (TYPE_1__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,int *,int *) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 int session_device_free (int *) ;
 int session_is_controller (TYPE_1__*,int ) ;
 int session_save (TYPE_1__*) ;

__attribute__((used)) static int method_release_device(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Session *s = userdata;
        uint32_t major, minor;
        SessionDevice *sd;
        dev_t dev;
        int r;

        assert(message);
        assert(s);

        r = sd_bus_message_read(message, "uu", &major, &minor);
        if (r < 0)
                return r;

        if (!DEVICE_MAJOR_VALID(major) || !DEVICE_MINOR_VALID(minor))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Device major/minor is not valid.");

        if (!session_is_controller(s, sd_bus_message_get_sender(message)))
                return sd_bus_error_setf(error, BUS_ERROR_NOT_IN_CONTROL, "You are not in control of this session");

        dev = makedev(major, minor);
        sd = hashmap_get(s->devices, &dev);
        if (!sd)
                return sd_bus_error_setf(error, BUS_ERROR_DEVICE_NOT_TAKEN, "Device not taken");

        session_device_free(sd);
        session_save(s);

        return sd_bus_reply_method_return(message, ((void*)0));
}
