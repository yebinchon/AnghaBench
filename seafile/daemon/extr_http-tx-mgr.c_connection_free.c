
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int curl; } ;
typedef TYPE_1__ Connection ;


 int curl_easy_cleanup (int ) ;
 int g_free (TYPE_1__*) ;

__attribute__((used)) static void
connection_free (Connection *conn)
{
    curl_easy_cleanup (conn->curl);
    g_free (conn);
}
