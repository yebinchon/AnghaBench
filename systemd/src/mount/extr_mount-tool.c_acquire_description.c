
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device ;


 scalar_t__ arg_description ;
 char* get_label (int *) ;
 char* get_model (int *) ;
 int log_debug (char*,scalar_t__) ;
 int log_oom () ;
 int sd_device_get_property_value (int *,char*,char const**) ;
 scalar_t__ strdup (char const*) ;
 scalar_t__ strjoin (char const*,char*,char const*) ;

__attribute__((used)) static int acquire_description(sd_device *d) {
        const char *model, *label;

        if (arg_description)
                return 0;

        model = get_model(d);

        label = get_label(d);
        if (!label)
                (void) sd_device_get_property_value(d, "ID_PART_ENTRY_NUMBER", &label);

        if (model && label)
                arg_description = strjoin(model, " ", label);
        else if (label)
                arg_description = strdup(label);
        else if (model)
                arg_description = strdup(model);
        else
                return 0;

        if (!arg_description)
                return log_oom();

        log_debug("Discovered description=%s", arg_description);
        return 1;
}
