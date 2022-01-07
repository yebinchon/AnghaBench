
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ uid; } ;



__attribute__((used)) static bool allow_object_pid(const struct ucred *ucred) {
        return ucred && ucred->uid == 0;
}
