
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_error ;


 int BUS_ERROR_JOB_TYPE_NOT_APPLICABLE ;
 int BUS_ERROR_LOAD_FAILED ;
 int BUS_ERROR_NO_ISOLATION ;
 int BUS_ERROR_NO_SUCH_UNIT ;
 int BUS_ERROR_ONLY_BY_DEPENDENCY ;
 int BUS_ERROR_TRANSACTION_IS_DESTRUCTIVE ;
 int EXIT_FAILURE ;
 int EXIT_NOPERMISSION ;
 int EXIT_NOTCONFIGURED ;
 int EXIT_NOTIMPLEMENTED ;
 int EXIT_NOTINSTALLED ;
 int SD_BUS_ERROR_ACCESS_DENIED ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int assert (int const*) ;
 scalar_t__ sd_bus_error_has_name (int const*,int ) ;
 int sd_bus_error_is_set (int const*) ;

__attribute__((used)) static int translate_bus_error_to_exit_status(int r, const sd_bus_error *error) {
        assert(error);

        if (!sd_bus_error_is_set(error))
                return r;

        if (sd_bus_error_has_name(error, SD_BUS_ERROR_ACCESS_DENIED) ||
            sd_bus_error_has_name(error, BUS_ERROR_ONLY_BY_DEPENDENCY) ||
            sd_bus_error_has_name(error, BUS_ERROR_NO_ISOLATION) ||
            sd_bus_error_has_name(error, BUS_ERROR_TRANSACTION_IS_DESTRUCTIVE))
                return EXIT_NOPERMISSION;

        if (sd_bus_error_has_name(error, BUS_ERROR_NO_SUCH_UNIT))
                return EXIT_NOTINSTALLED;

        if (sd_bus_error_has_name(error, BUS_ERROR_JOB_TYPE_NOT_APPLICABLE) ||
            sd_bus_error_has_name(error, SD_BUS_ERROR_NOT_SUPPORTED))
                return EXIT_NOTIMPLEMENTED;

        if (sd_bus_error_has_name(error, BUS_ERROR_LOAD_FAILED))
                return EXIT_NOTCONFIGURED;

        if (r != 0)
                return r;

        return EXIT_FAILURE;
}
