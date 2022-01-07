
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_errno; } ;
typedef TYPE_1__ connection ;


 char const* strerror (int ) ;

__attribute__((used)) static const char *connSocketGetLastError(connection *conn) {
    return strerror(conn->last_errno);
}
