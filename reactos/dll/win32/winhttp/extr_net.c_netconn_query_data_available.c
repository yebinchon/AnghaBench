
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peek_len; scalar_t__ secure; } ;
typedef TYPE_1__ netconn_t ;
typedef int ULONG ;



ULONG netconn_query_data_available( netconn_t *conn )
{
    return conn->secure ? conn->peek_len : 0;
}
