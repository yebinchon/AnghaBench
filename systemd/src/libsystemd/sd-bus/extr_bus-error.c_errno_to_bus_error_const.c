
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_error ;


 int BUS_ERROR_OOM ;
 int SD_BUS_ERROR_ACCESS_DENIED ;
 int SD_BUS_ERROR_ADDRESS_IN_USE ;
 int SD_BUS_ERROR_BAD_ADDRESS ;
 int SD_BUS_ERROR_DISCONNECTED ;
 int SD_BUS_ERROR_FILE_EXISTS ;
 int SD_BUS_ERROR_FILE_NOT_FOUND ;
 int SD_BUS_ERROR_INCONSISTENT_MESSAGE ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int SD_BUS_ERROR_IO_ERROR ;
 int SD_BUS_ERROR_LIMITS_EXCEEDED ;
 int SD_BUS_ERROR_MAKE_CONST (int ,char*) ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int SD_BUS_ERROR_NULL ;
 int SD_BUS_ERROR_TIMEOUT ;
 int SD_BUS_ERROR_UNIX_PROCESS_ID_UNKNOWN ;

__attribute__((used)) static sd_bus_error errno_to_bus_error_const(int error) {

        if (error < 0)
                error = -error;

        switch (error) {

        case 133:
                return BUS_ERROR_OOM;

        case 131:
        case 145:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_ACCESS_DENIED, "Access denied");

        case 138:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_INVALID_ARGS, "Invalid argument");

        case 130:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_UNIX_PROCESS_ID_UNKNOWN, "No such process");

        case 134:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_FILE_NOT_FOUND, "File not found");

        case 139:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_FILE_EXISTS, "File exists");

        case 128:
        case 129:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_TIMEOUT, "Timed out");

        case 137:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_IO_ERROR, "Input/output error");

        case 136:
        case 141:
        case 140:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_DISCONNECTED, "Disconnected");

        case 132:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_NOT_SUPPORTED, "Not supported");

        case 143:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_BAD_ADDRESS, "Address not available");

        case 135:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_LIMITS_EXCEEDED, "Limits exceeded");

        case 144:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_ADDRESS_IN_USE, "Address in use");

        case 142:
                return SD_BUS_ERROR_MAKE_CONST(SD_BUS_ERROR_INCONSISTENT_MESSAGE, "Inconsistent message");
        }

        return SD_BUS_ERROR_NULL;
}
