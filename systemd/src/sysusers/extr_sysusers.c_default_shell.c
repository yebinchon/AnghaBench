
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;


 char const* NOLOGIN ;

__attribute__((used)) static const char* default_shell(uid_t uid) {
        return uid == 0 ? "/bin/sh" : NOLOGIN;
}
