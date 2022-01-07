
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t i_headers; TYPE_1__* p_headers; } ;
typedef TYPE_2__ httpd_message_t ;
struct TYPE_4__ {char const* value; int name; } ;


 int strcasecmp (int ,char const*) ;

const char *httpd_MsgGet(const httpd_message_t *msg, const char *name)
{
    for (size_t i = 0; i < msg->i_headers; i++)
        if (!strcasecmp(msg->p_headers[i].name, name))
            return msg->p_headers[i].value;
    return ((void*)0);
}
