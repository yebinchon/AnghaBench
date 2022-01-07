
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* type; } ;
typedef TYPE_2__ connection ;
struct TYPE_5__ {char const* (* get_last_error ) (TYPE_2__*) ;} ;


 char const* stub1 (TYPE_2__*) ;

__attribute__((used)) static inline const char *connGetLastError(connection *conn) {
    return conn->type->get_last_error(conn);
}
