
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ver_ihl; int tos; int id; int frag_off; int ttl; int protocol; int options; int srcAddr; scalar_t__ check; int tot_len; } ;
typedef TYPE_1__ amt_ip_alert_t ;


 scalar_t__ IGMP_REPORT_LEN ;
 int INADDR_ANY ;
 scalar_t__ IP_HDR_IGMP_LEN ;
 int htons (scalar_t__) ;

__attribute__((used)) static void make_ip_header( amt_ip_alert_t *p_ipHead )
{
    p_ipHead->ver_ihl = 0x46;
    p_ipHead->tos = 0xc0;
    p_ipHead->tot_len = htons( IP_HDR_IGMP_LEN + IGMP_REPORT_LEN );
    p_ipHead->id = 0x00;
    p_ipHead->frag_off = 0x0000;
    p_ipHead->ttl = 0x01;
    p_ipHead->protocol = 0x02;
    p_ipHead->check = 0;
    p_ipHead->srcAddr = INADDR_ANY;
    p_ipHead->options = 0x0000;
}
