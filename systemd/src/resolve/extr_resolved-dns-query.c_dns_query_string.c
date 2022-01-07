
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* request_address_string; int question_idna; int question_utf8; int request_address; int request_family; scalar_t__ request_address_valid; } ;
typedef TYPE_1__ DnsQuery ;


 char const* dns_question_first_name (int ) ;
 int in_addr_to_string (int ,int *,char const**) ;

const char *dns_query_string(DnsQuery *q) {
        const char *name;
        int r;



        if (q->request_address_string)
                return q->request_address_string;

        if (q->request_address_valid) {
                r = in_addr_to_string(q->request_family, &q->request_address, &q->request_address_string);
                if (r >= 0)
                        return q->request_address_string;
        }

        name = dns_question_first_name(q->question_utf8);
        if (name)
                return name;

        return dns_question_first_name(q->question_idna);
}
