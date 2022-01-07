
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;
typedef int Job ;


 int BUS_ERROR_NO_SUCH_JOB ;
 int assert (int *) ;
 int bus_job_method_cancel (int *,int *,int *) ;
 int * manager_get_job (int *,scalar_t__) ;
 int sd_bus_error_setf (int *,int ,char*,unsigned int) ;
 int sd_bus_message_read (int *,char*,scalar_t__*) ;

__attribute__((used)) static int method_cancel_job(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        uint32_t id;
        Job *j;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "u", &id);
        if (r < 0)
                return r;

        j = manager_get_job(m, id);
        if (!j)
                return sd_bus_error_setf(error, BUS_ERROR_NO_SUCH_JOB, "Job %u does not exist.", (unsigned) id);

        return bus_job_method_cancel(message, j, error);
}
