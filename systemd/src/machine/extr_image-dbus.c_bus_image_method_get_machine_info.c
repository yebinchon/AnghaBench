
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_3__ {int machine_info; int metadata_valid; } ;
typedef TYPE_1__ Image ;


 int bus_reply_pair_array (int *,int ) ;
 int image_read_metadata (TYPE_1__*) ;
 int sd_bus_error_set_errnof (int *,int,char*) ;

int bus_image_method_get_machine_info(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Image *image = userdata;
        int r;

        if (!image->metadata_valid) {
                r = image_read_metadata(image);
                if (r < 0)
                        return sd_bus_error_set_errnof(error, r, "Failed to read image metadata: %m");
        }

        return bus_reply_pair_array(message, image->machine_info);
}
