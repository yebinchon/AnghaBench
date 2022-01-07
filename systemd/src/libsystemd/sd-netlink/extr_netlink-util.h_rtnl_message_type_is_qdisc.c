
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int IN_SET (int ,int ,int ,int ) ;
 int RTM_DELQDISC ;
 int RTM_GETQDISC ;
 int RTM_NEWQDISC ;

__attribute__((used)) static inline bool rtnl_message_type_is_qdisc(uint16_t type) {
        return IN_SET(type, RTM_NEWQDISC, RTM_DELQDISC, RTM_GETQDISC);
}
