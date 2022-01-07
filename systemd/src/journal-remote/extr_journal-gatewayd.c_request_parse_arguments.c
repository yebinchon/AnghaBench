
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MHD_Connection {int argument_parse_error; } ;
typedef struct MHD_Connection RequestMeta ;


 int MHD_GET_ARGUMENT_KIND ;
 int MHD_get_connection_values (struct MHD_Connection*,int ,int ,struct MHD_Connection*) ;
 int assert (struct MHD_Connection*) ;
 int request_parse_arguments_iterator ;

__attribute__((used)) static int request_parse_arguments(
                RequestMeta *m,
                struct MHD_Connection *connection) {

        assert(m);
        assert(connection);

        m->argument_parse_error = 0;
        MHD_get_connection_values(connection, MHD_GET_ARGUMENT_KIND, request_parse_arguments_iterator, m);

        return m->argument_parse_error;
}
