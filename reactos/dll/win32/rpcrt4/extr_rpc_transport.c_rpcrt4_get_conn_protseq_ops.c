
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection_ops {int name; } ;


 unsigned int ARRAY_SIZE (struct connection_ops const*) ;
 struct connection_ops const* conn_protseq_list ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static const struct connection_ops *rpcrt4_get_conn_protseq_ops(const char *protseq)
{
    unsigned int i;
    for(i = 0; i < ARRAY_SIZE(conn_protseq_list); i++)
        if (!strcmp(conn_protseq_list[i].name, protseq))
            return &conn_protseq_list[i];
    return ((void*)0);
}
