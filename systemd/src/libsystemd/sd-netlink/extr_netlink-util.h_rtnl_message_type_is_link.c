
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int IN_SET (int ,int ,int ,int ,int ) ;
 int RTM_DELLINK ;
 int RTM_GETLINK ;
 int RTM_NEWLINK ;
 int RTM_SETLINK ;

__attribute__((used)) static inline bool rtnl_message_type_is_link(uint16_t type) {
        return IN_SET(type, RTM_NEWLINK, RTM_SETLINK, RTM_GETLINK, RTM_DELLINK);
}
