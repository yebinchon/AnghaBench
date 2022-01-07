
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MHD_Connection {int dummy; } ;
typedef enum MHD_RequestTerminationCode { ____Placeholder_MHD_RequestTerminationCode } MHD_RequestTerminationCode ;


 int MHD_RESPMEM_PERSISTENT ;
 int mhd_respond_internal (struct MHD_Connection*,int,char const*,scalar_t__,int ) ;
 char* strjoina (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

int mhd_respond(struct MHD_Connection *connection,
                enum MHD_RequestTerminationCode code,
                const char *message) {

        const char *fmt;

        fmt = strjoina(message, "\n");

        return mhd_respond_internal(connection, code,
                                    fmt, strlen(message) + 1,
                                    MHD_RESPMEM_PERSISTENT);
}
