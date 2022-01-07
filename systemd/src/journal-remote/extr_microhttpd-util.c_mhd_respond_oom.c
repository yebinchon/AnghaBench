
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MHD_Connection {int dummy; } ;


 int MHD_HTTP_SERVICE_UNAVAILABLE ;
 int mhd_respond (struct MHD_Connection*,int ,char*) ;

int mhd_respond_oom(struct MHD_Connection *connection) {
        return mhd_respond(connection, MHD_HTTP_SERVICE_UNAVAILABLE, "Out of memory.");
}
