
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 scalar_t__ UID_NOBODY ;
 scalar_t__ uid_is_dynamic (scalar_t__) ;
 scalar_t__ uid_is_system (scalar_t__) ;

__attribute__((used)) static bool uid_for_system_journal(uid_t uid) {



        return uid_is_system(uid) || uid_is_dynamic(uid) || uid == UID_NOBODY;
}
